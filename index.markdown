---
layout: page
title: Home
permalink: /
---

{% assign cv = site.data.cv %}

## {{ cv.name }}

**{{ cv.tagline }}** · {{ cv.location.city }}, {{ cv.location.region }}, {{ cv.location.country }}

{{ cv.introduction }}

{% assign current = cv.experience[0] %}

{% assign contact_email = cv.contact.email %}
{% assign contact_phone = cv.contact.phone %}
{% assign contact_phone_href = contact_phone | replace: ' ', '' | replace: '(', '' | replace: ')', '' | replace: '-', '' %}

<div
  class="my-4 p-3 p-md-4 rounded-4 border border-primary border-opacity-25 overflow-hidden"
  style="background: linear-gradient(135deg, rgba(13,110,253,0.12), rgba(13,110,253,0.03));"
>
  <div class="d-flex flex-column flex-md-row align-items-start align-items-md-center justify-content-between gap-3">
    <div class="d-flex align-items-start gap-3">
      <div
        class="flex-shrink-0 rounded-circle bg-primary bg-opacity-10 text-primary d-flex align-items-center justify-content-center"
        style="width: 44px; height: 44px;"
        aria-hidden="true"
      >
        <i class="fas fa-bolt"></i>
      </div>

      <div>
        <h3 class="h5 mb-1">Let’s talk</h3>
        <div class="text-muted">Reach me directly:</div>

        <div class="mt-2 d-flex flex-wrap gap-2">
          <a class="badge rounded-pill text-bg-light border text-decoration-none" href="mailto:{{ contact_email }}">
            <i class="fas fa-envelope me-1 text-muted"></i>{{ contact_email }}
          </a>
          <a class="badge rounded-pill text-bg-light border text-decoration-none" href="tel:{{ contact_phone_href }}">
            <i class="fas fa-phone me-1 text-muted"></i>{{ contact_phone }}
          </a>
        </div>
      </div>
    </div>

    <div class="d-flex flex-wrap gap-2">
      <a class="btn btn-sm btn-primary" href="mailto:{{ contact_email }}">
        <i class="fas fa-paper-plane me-1"></i>Email
      </a>
      <a class="btn btn-sm btn-outline-primary" href="tel:{{ contact_phone_href }}">
        <i class="fas fa-phone me-1"></i>Call
      </a>
    </div>
  </div>
</div>

<div class="row g-3 my-4">
  <div class="col-12 col-lg-6">
    <a class="post-preview position-relative overflow-hidden d-block rounded text-decoration-none" href="{{ '/experience/' | relative_url }}">
      <div class="position-relative z-1 p-3">
        <h3 class="h5 mb-2">Current role</h3>
        <p class="mb-1"><strong>{{ current.title }}</strong> @ {{ current.company }}</p>
        <p class="mb-0 text-muted">{{ current.start }} – {{ current.end }}</p>
      </div>
    </a>
  </div>
</div>

<div class="row g-3">
  <div class="col-12 col-md-6 col-xl-4">
    <a class="post-preview position-relative overflow-hidden d-block rounded text-decoration-none h-100" href="{{ '/skills/' | relative_url }}">
      <div class="position-relative z-1 p-3">
        <h3 class="h5 mb-2">Skills</h3>
        <p class="mb-0 text-muted">Core strengths across backend, cloud, and testing.</p>
      </div>
    </a>
  </div>

  <div class="col-12 col-md-6 col-xl-4">
    <a class="post-preview position-relative overflow-hidden d-block rounded text-decoration-none h-100" href="{{ '/experience/' | relative_url }}">
      <div class="position-relative z-1 p-3">
        <h3 class="h5 mb-2">Experience</h3>
        <p class="mb-0 text-muted">Recent roles, impact, and tech stacks.</p>
      </div>
    </a>
  </div>

  <div class="col-12 col-md-6 col-xl-4">
    <a class="post-preview position-relative overflow-hidden d-block rounded text-decoration-none h-100" href="{{ '/education/' | relative_url }}">
      <div class="position-relative z-1 p-3">
        <h3 class="h5 mb-2">Education</h3>
        <p class="mb-0 text-muted">Degrees and academic focus.</p>
      </div>
    </a>
  </div>
</div>
