---
icon: fas fa-user
order: 1
layout: page
title: About
permalink: /about/
---

{% assign cv = site.data.cv %}

## {{ cv.name }}

**{{ cv.tagline }}** · {{ cv.location.city }}, {{ cv.location.region }}, {{ cv.location.country }}

{{ cv.introduction }}

## Contact

- **Email**: [{{ cv.contact.email }}](mailto:{{ cv.contact.email }})
- **Phone**: {{ cv.contact.phone }}


