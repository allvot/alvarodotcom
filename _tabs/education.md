---
icon: fas fa-graduation-cap
order: 4
layout: page
title: Education
permalink: /education/
---

{% assign cv = site.data.cv %}

## Education

{% for edu in cv.education %}
### {{ edu.school }} — {{ edu.degree }}

**{{ edu.start }} – {{ edu.end }}** · {{ edu.location }}

{% if edu.notes and edu.notes.size > 0 %}
{% for note in edu.notes %}
- {{ note }}
{% endfor %}
{% endif %}

{% endfor %}


