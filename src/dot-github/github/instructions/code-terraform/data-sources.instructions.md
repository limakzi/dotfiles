---
applyTo:
  - "**/*.tf"
---

# Terraform — data sources

- Use data sources to look up cloud-assigned IDs (AMI IDs, VPC IDs, subnet IDs).
- Never hardcode cloud-assigned IDs.
- Avoid `depends_on` on data blocks.
- Restructure to use implicit reference chains instead of `depends_on` on data sources.
