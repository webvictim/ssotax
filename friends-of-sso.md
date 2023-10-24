---
title: Friends of SSO
description: A list of vendors who understand and value the importance of security.
---

<details open>
<summary>
What does it mean?
</summary>
The following vendors take security seriously by offering SSO without unreasonable surcharges (via OpenID Connect, SAML) in all paid plans. *Find out more about the [why](/why).*

Another important puzzle piece to manage your organizations access is SCIM. It allows you to centrally provision employee’s with specific user permissions and deprovisions user accounts during an offboarding. That’s why we also added where [SCIM](https://scim.cloud/) is available.

Best practice for vendors to keep their customers secure would be offering both SCIM and SSO without unreasonable surcharges.
</details>

## {{ page.title }}

<div style="text-align: right;">
  <a href="{{ site.github_url }}/issues/new?template=new-good-vendor.md" target="_blank"><button>Add new Vendor</button></a>
</div>

<div class="table-wrapper">
  <table class="sortable">
    <thead>
      <tr>
        <th class="sorttable_nosort"></th>
        <th>Vendor</th>
        <th>SSO on all Paid Plans</th>
        <th>SSO on Free Plans</th>
        <th>SCIM starting on Plan</th>
        <th>Free SSO Providers</th>
        <th>Source</th>
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
          <td sorttable_customkey="{{ vendor.sso_on_all_paid_plans }}">
            {% if vendor.sso_on_all_paid_plans %}
              <img src="img/checkmark_blue.svg" width="20" height="20" alt="Yes" />
            {% endif %}
          </td>
          <td sorttable_customkey="{{ vendor.sso_on_free_plans }}">
            {% if vendor.sso_on_free_plans %}
              <img src="img/checkmark_green.svg" width="20" height="20" alt="Yes" />
            {% endif %}
          </td>
          <td style="color: {{ scim_color }}; font-weight: bold; text-align: center;">
            {{ vendor.scim_starting_on_plan }}
          </td>
          <td style="text-align: center;">
            {% include vendor_free_sso_providers.html providers=vendor.free_sso_providers %}
          </td>
          <td style="text-align: center;">
            {% include vendor_pricing_sources.html pricing_sources=vendor.sources %}
          </td>
          <td>{{ vendor.updated_at }}</td>
          <td class="actions">
            {% include vendor_edit_link.html vendor_path=vendor.path vendor_name=vendor.name %}
          </td>
        </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

{% include vendor_table_footer.html %}