---
title: Friends of SSO
description: A list of vendors who understand and value the importance of security.
---

## {{ page.title }}

<table class="sortable">
  <thead>
    <tr>
      <th class="sorttable_nosort"></th>
      <th>Vendor</th>
      <th>SSO on all Paid Plans</th>
      <th>SSO on Free Plans</th>
      <th>Source</th>
      <th>Updated</th>
      <th class="sorttable_nosort"></th>
    </tr>
  </thead>
  <tbody>
    {% for vendor in site.vendors_good %}
      <tr>
        <td class="actions">
          {% include vendor_logo.html vendor_url=vendor.vendor_url %}
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

{% include vendor_table_footer.html %}