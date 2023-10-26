---
title: Wall of Shame
order: 1
---

<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function(event) {
  setTimeout(function() {
    setInitialSortByColumnNo(2);
    setInitialSortByColumnNo(2);
  }, 200);
});
</script>

<details open>
<summary>
Why does this exist?
</summary>
The **SSO Tax** stands for the practice of SaaS vendors to upcharge for Single-Sign-On ("SSO"). 

As a consequence, features like SSO, and more specifically OpenID Connect or SAML, are often restricted to enterprise-level subscriptions. This pricing strategy makes it prohibitively expensive for non-enterprise businesses to centrally manage their employees' access. *[Find out more about the why](/why).*

The following list includes vendors that have SSO locked up in an subscription tier that is more than 10% more expensive than the standard price.

Imagine buying a car and the manufacturer asks for an extra payment to unlock 100% of the braking power. Not offering security features if they already exist in your product means a vendor doesn’t care about your security. Our aim is to spotlight vendors who overcharge for security features, in hopes of instigating a change in the industry.
</details>

## {{ page.title }}

<div style="text-align: right;" markdown="0">
  <a href="{{ site.github_url }}/issues/new?template=add-bad-vendor.md" target="_blank"><button>Add new Vendor</button></a>
</div>

{% include sharing_links.html %}
<div class="table-wrapper">
  <table class="sortable">
    <thead>
      <tr>
        <th class="sorttable_nosort"></th>
        <th>Vendor</th>
        <th>Increase Paid SSO</th>
        <th>Base Pricing</th>
        <th>Paid SSO Pricing</th>
        <th>Pricing Scheme</th>
        <th>Free SSO Providers</th>
        <th>Notes</th>
        <th>Source</th>
        <th>Updated</th>
        <th class="sorttable_nosort"></th>
      </tr>
    </thead>
    <tbody>
      {% for vendor in site.vendors_bad %}
        {% if vendor.sso_pricing == "unknown" or vendor.base_pricing == "unknown" %}
          {% assign sso_increase = "unknown" %}
        {% else %}
          {% assign sso_increase = vendor.sso_pricing | minus: vendor.base_pricing | times: 1.0 | divided_by: vendor.base_pricing | times: 100 | round %}
        {% endif %}
        <tr>
          <td class="actions">
            {% include vendor_logo.html vendor_url=vendor.vendor_url vendor_name=vendor.name %}
          </td>
          <td><a href="{{ vendor.vendor_url }}" target="_blank">{{ vendor.name }}</a></td>
          <td sorttable_customkey="{{ sso_increase }}">
            {% if sso_increase == "unknown" %}
              <div class="tooltip">???
                <span class="tooltiptext" style="font-size: 0.7em;">Pricing is not transparent and unknown. Often vendors ask you to call them to get a quote.</span>
              </div>
            {% else %}
              {{ sso_increase }}%
            {% endif %}
          </td>
          <td sorttable_customkey="{{ vendor.base_pricing }}">
            {% if vendor.base_pricing == "unknown" %}
              ???
            {% else %}
              {{ vendor.base_pricing | format: vendor.currency}}
            {% endif %}
          </td>
          <td sorttable_customkey="{{ vendor.sso_pricing }}">
            {% if vendor.sso_pricing == "unknown" %}
              ???
            {% else %}
              {{ vendor.sso_pricing | format: vendor.currency}}
            {% endif %}
          </td>
          <td>{{ vendor.pricing_scheme }}</td>
          <td style="text-align: center;">
            {% include vendor_free_sso_providers.html providers=vendor.free_sso_providers %}
          </td>
          <td style="font-size: 0.7em;">
            <div class="tooltip">{{ vendor.notes | truncate: 25 }}
              <span class="tooltiptext">{{ vendor.notes }}</span>
            </div>
          </td>
          <td>
            {% include vendor_pricing_sources.html pricing_sources=vendor.pricing_sources %}
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

## FAQs

<details>
<summary>
This doesn't scale linearly for number of seats!
</summary>
Correct. Since we don't know who's reading the page, it's easiest to just assume a team with no volume discount.
</details>

<details>
<summary>
How is base pricing determined?
</summary>
We disregard free tier pricing, as we can assume these aren't intended for long term business customer use. We also disregard "single person" pricing, under the assumption that we're looking on behalf of a team of 5, 10, or more people.
</details>

<details>
<summary>
What does "Quote" mean in the Source column?
</summary>
If a vendor doesn't list pricing but a user has submitted pricing based on a quote, it can be included here. If a vendor feels that their actual pricing is inaccurately reflected by this quote, feel free open an issue on Github.
</details>

<details>
<summary>
I'm a vendor and this data is wrong!
</summary>
Please feel free to submit a PR to this page.
</details>

<details>
<summary>
I'm a vendor and this doesn't reflect the value-add of our Enterprise tier!
</summary>
That's the point. Decouple your security features from your value-added services. They should be priced separately.
</details>

<details>
<summary>
But it costs money to provide SAML support, so we can't offer it for free!
</summary>
While I'd like people to really consider it a <em>bare minimum</em> feature for business SaaS, I'm OK with it costing a little extra to cover maintenance costs. If your SSO support is a 10% price hike, you're not on this list. But these percentage increases are not maintenance costs, they're revenue generation because you know your customers have no good options.
</details>

<details>
<summary>
Does it make sense to list vendors here when they offer free Google SSO?
</summary>
Yes, it's about all vendors that lock up any SSO. Because SSO should be available for everybody not just for Google users.
</details>
