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
          <img src="https://logo.clearbit.com/{{ vendor.vendor_url | remove: "www." | split: '//' | last | split: '/' | first }}?size=20" />
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
          {% for source in vendor.sources %}
            {% if forloop.first == false %}
              &amp;
            {% endif %}
            {% if source contains "://" %}
              <a href="{{ source }}" target="_blank">&#128279;</a>
            {% else %}
              {{ source }}
            {% endif %}
          {% endfor %}
        </td>
        <td>{{ vendor.updated_at }}</td>
        <td class="actions">
          <a href="{{ site.github_url }}/edit/master/_vendors_good/{{ vendor.url | remove: "/vendors/" }}" target="_blank"><img src="img/pencil.svg" width="15" height="15" alt="Edit {{ vendor.name }}" /></a>
        </td>
      </tr>
    {% endfor %}
  </tbody>
</table>

<div style="font-size: 12pt; color: #dddddd;" markdown="span">Vendor logos are provided by Clearbit.</div>