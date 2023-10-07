---
title: Friends of SSO
description: A list of vendors who understand and value the importance of security.
---

## {{ page.title }}

<div style="text-align: right;">
  <a href="{{ site.github_url }}/issues/new?template=new-vendor.md" target="_blank"><button>Add new Vendor</button></a>
</div>

<table class="sortable">
  <thead>
    <tr>
      <th class="sorttable_nosort"></th>
      <th>Vendor</th>
      <th>SSO on all Paid Plans</th>
      <th>SSO on Free Plans</th>
      <th>SCIM starting on Plan</th>
      <th>Source</th>
      <th>Free OAuth Providers</th>
      <th>Updated</th>
      <th class="sorttable_nosort"></th>
    </tr>
  </thead>
  <tbody>
    {% for vendor in site.vendors_good %}
      {% case vendor.scim_starting_on_plan %}
        {% when "highest" %}
          {% assign scim_color = "red" %}
        {% when "lowest", "free" %}
          {% assign scim_color = "green" %}
        {% else %}
          {% assign scim_color = "black" %}
      {% endcase %}
      <tr>
        <td class="actions">
          {% include vendor_logo.html vendor_url=vendor.vendor_url vendor_name=vendor.name %}
        </td>
        <td><a href="{{ vendor.vendor_url }}" target="_blank">{{ vendor.name }}</a></td>
        <td>
          {% if vendor.sso_on_all_paid_plans %}
            <img src="img/checkmark_blue.svg" width="20" height="20" alt="Yes" />
          {% endif %}
        </td>
        <td>
          {% if vendor.sso_on_free_plans %}
            <img src="img/checkmark_green.svg" width="20" height="20" alt="Yes" />
          {% endif %}
        </td>
        <td style="color: {{ scim_color }}; font-weight: bold; text-align: center;">
          {{ vendor.scim_starting_on_plan }}
        </td>
        <td style="text-align: center;">
          {% include vendor_pricing_sources.html pricing_sources=vendor.sources %}
        </td>
        <td style="text-align: center;">
          {% include vendor_oauth_providers.html providers=vendor.sign_in_oauth_providers %}
        </td>
        <td>{{ vendor.updated_at }}</td>
        <td class="actions">
          {% include vendor_edit_link.html vendor_path=vendor.path vendor_name=vendor.name %}
        </td>
      </tr>
    {% endfor %}
  </tbody>
</table>

{% include vendor_table_footer.html %}