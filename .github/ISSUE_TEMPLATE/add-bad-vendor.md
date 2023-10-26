---
name: Add/Update bad Vendor
about: Use this template to create a pull request friendly issue.
title: "Add/Update Vendor: [Vendor]"
---

*Do you want to add or update the vendor? Adjust the title accordingly!*

**How to use? Fill the yaml file below!**
- **name:** Use the vendors name 
- **base_pricing:** Use the vendors cheapest available price suitable for teams/companies. A plan limited to less than 10 users may not be suited for companies.
- **sso_pricing:** Use the vendors cheapest price that includes SSO. 
- **scim_pricing:** Use the vendors cheapest price that includes SCIM. 
- **pricing_scheme:** How is the pricing? Is it per user per month? Per month?
- **pricing_sources:** Add a link or a note to where you got the pricing from. One per line.
- **notes:** If you need to clarify pricing, please add a note.
- **free_sso_providers:** Do they support free SSO providers like Google, Apple, Github etc.? One per line.
- **updated_at:** yyyy-mm-dd of the day you filed this. 
- **vendor_url:** Use the vendors public website

```yaml
---
base_pricing: 10
currency: USD
free_sso_providers:
  - Apple
  - Google
name: Example Vendor
notes: You can add SSO to a plan for $5 per u/m.
pricing_scheme: per user/month
pricing_sources:
  - https://example.com/pricing
  - Quote
scim_pricing: 60
sso_pricing: 60
updated_at: 2007-07-29
vendor_url: https://example.com
```