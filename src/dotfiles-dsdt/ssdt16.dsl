/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt16.dat, Wed Mar 11 20:25:19 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000149 (329)
 *     Revision         0x02
 *     Checksum         0x51
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Hwp"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Hwp", 0x00003000)
{
    External (_SB_.CFGD, IntObj)
    External (_SB_.HWPE, IntObj)
    External (_SB_.HWPV, IntObj)
    External (_SB_.ITBM, IntObj)
    External (_SB_.LMPS, IntObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PR00, DeviceObj)
    External (_SB_.PR00.CPC2, PkgObj)
    External (_SB_.PR00.CPOC, PkgObj)
    External (CPC2, IntObj)
    External (CPOC, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PR00)
    {
        If (CondRefOf (\_SB.HWPE))
        {
            If (\_SB.HWPE)
            {
                Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
                {
                    If ((\_SB.CFGD & 0x01000000))
                    {
                        Return (CPOC) /* External reference */
                    }
                    Else
                    {
                        If (((\_SB.CFGD & 0x02000000) && (\_SB.ITBM == Zero)))
                        {
                            If ((\_SB.LMPS != Zero))
                            {
                                DerefOf (CPC2 [0x02]) = \_SB.LMPS /* External reference */
                            }
                        }

                        Return (CPC2) /* External reference */
                    }
                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

