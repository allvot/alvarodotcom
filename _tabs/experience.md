---
icon: fas fa-briefcase
order: 3
layout: page
title: Experience
permalink: /experience/
---

{% assign cv = site.data.cv %}

## Experience

{% for role in cv.experience %}
### {{ role.company }} — {{ role.title }}

**{{ role.start }} – {{ role.end }}** · {{ role.location }}

{% for bullet in role.highlights %}
- {{ bullet }}
{% endfor %}

{% if role.tech and role.tech.size > 0 %}
**Tech**: {{ role.tech | join: ", " }}
{% endif %}

{% endfor %}


