---
icon: fas fa-tools
order: 2
layout: page
title: Skills
permalink: /skills/
---

{% assign cv = site.data.cv %}

{% for group in cv.skills %}
### {{ group.category }}

<div class="row g-3 mb-4">
{% for item in group.items %}
  <div class="col-12 col-lg-6">
    <div class="post-preview position-relative overflow-hidden rounded h-100">
      <div class="position-relative z-1 p-3">
        <div class="d-flex align-items-start gap-2">
          {% if item.icon_img %}
            <img
              src="{{ item.icon_img | relative_url }}"
              alt="{{ item.name }}"
              style="width: 20px; height: 20px; margin-top: 2px;"
            >
          {% elsif item.icon_class %}
            <i class="{{ item.icon_class }} fa-fw" style="margin-top: 2px;"></i>
          {% endif %}

          <div class="flex-grow-1">
            <h4 class="h6 mb-1">
              {{ item.name }}
              {% if item.years %}
                <span class="text-muted">· {{ item.years }}+ yrs</span>
              {% endif %}
            </h4>

            {% if item.description %}
              <p class="mb-1 text-muted">{{ item.description }}</p>
            {% endif %}

            {% if item.details %}
              <p class="mb-0"><span class="text-muted">{{ item.details }}</span></p>
            {% endif %}
          </div>
        </div>
      </div>
    </div>
  </div>
{% endfor %}
</div>

{% endfor %}


