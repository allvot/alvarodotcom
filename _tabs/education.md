---
icon: fas fa-graduation-cap
order: 5
layout: page
title: Education
permalink: /education/
toc: true
---

{% assign cv = site.data.cv %}

{% for edu in cv.education %}
## {{ edu.degree }}

**{{ edu.school }}**
{{ edu.start }} – {{ edu.end }} · {{ edu.location }}

{% if edu.notes and edu.notes.size > 0 %}
### Highlights
{% for note in edu.notes %}
- {{ note }}
{% endfor %}
{% endif %}

---

{% endfor %}


