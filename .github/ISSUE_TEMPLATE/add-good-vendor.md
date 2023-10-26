---
name: Add/Update good Vendor
about: Use this template to create a pull request friendly issue.
title: "Add/Update good Vendor: [Vendor]"
---

*Do you want to add or update the vendor? Adjust the title accordingly!*

**How to use? Fill the yaml file below!**
- **name:** Use the vendors name 
- **free_sso_providers:** Do they support free SSO providers like Google, Apple, Github etc.? One per line.
- **scim_pricing:** Use the vendors cheapest price that includes SCIM. 
- **scim_starting_on_plan:** When is SCIM available? `lowest`` or `highest` 
- **sources:** Add a link or a note to where you got information like pricing from. One per line.
- **sso_on_free_plans:** Is SSO available on free plans?
- **sso_on_all_paid_plans:** Is SSO available on all paid plans? It must be true to appear on this list.
- **updated_at:** yyyy-mm-dd of the day you filed this. 
- **vendor_url:** Use the vendors public website

```yaml
---
name: Example Vendor
free_sso_providers:
  - Google
scim_pricing: 60
scim_starting_on_plan: highest
sources:
  - https://example.com/pricing
  - Quote
sso_on_free_plans: false
sso_on_all_paid_plans: true
updated_at: 2007-07-29
vendor_url: https://example.com
```