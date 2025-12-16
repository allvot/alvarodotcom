---
icon: fas fa-tools
order: 2
layout: page
title: Skills
permalink: /skills/
---

{% assign cv = site.data.cv %}

## Skills

{% for group in cv.skills %}
### {{ group.category }}

{% for item in group.items %}
- {{ item }}
{% endfor %}

{% endfor %}


