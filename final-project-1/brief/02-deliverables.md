# Deliverables

Five folders, five deliverables. Each one has a README explaining the work —
the images alone are not a submission.

---

## 01 — Research & Definition

**Goes in:** `01-research/`

- `README.md` containing:
  - Which user you chose, and why (2–3 paragraphs).
  - One user persona — grounded, not a stock template. Name, context, the
    specific moment they need this product.
  - A **user journey** for one task, start to finish, with the friction
    points marked. Example task: "I was told my automation is broken. Fix it."
  - **Competitive teardown** of 3 products (n8n, Zapier, Make, Retool, or
    anything adjacent). For each: one screenshot, one thing it does well, one
    thing it does badly. Be specific — "the UI is cluttered" is not a finding.
- Any research artefacts as images: affinity maps, flows, notes.

**Judged on:** whether your later design decisions visibly trace back to this.

---

## 02 — Information Architecture & Wireframes

**Goes in:** `02-wireframes/`

- A **sitemap / IA diagram** — what screens exist and how they connect.
- **Low-fidelity wireframes** for all four required screens. Greyscale.
  No colour, no final type, no icons you spent an hour on.
- At least one screen shown in **two competing versions**, with a paragraph
  on which you picked and why. This is the deliverable people skip. Do not
  skip it — it is worth more than it looks.

**Judged on:** structure and hierarchy, not fidelity. Ugly is fine here.

---

## 03 — Visual Design & Design System

**Goes in:** `03-ui/`

- **High-fidelity designs** for all four required screens, desktop.
- The dashboard and failure state at **375px** as well.
- A **design system page** exported as an image: colour tokens with their hex
  values and contrast ratios, type scale, spacing scale, and your component
  set (buttons, inputs, cards, node, badge, toast — at all their states).
- **States:** every screen also shown empty, loading, and in error.

**Judged on:** consistency and system thinking. Ten one-off buttons is a fail
even if each one is pretty.

---

## 04 — Prototype

**Goes in:** `04-prototype/`

- A **link to the Figma prototype**, sharing set to *anyone with the link can
  view*. Put it in the README. A dead link is a zero — test it in a private
  window before you submit.
- One clickable flow that works end to end. Suggested: *notification of
  failure → dashboard → find the broken workflow → open the run → see the
  failed node → fix or re-run → confirmation.*
- A **screen recording** of you walking that flow, under 3 minutes, as
  `walkthrough.mp4`. Keep it under 50 MB.

**Judged on:** whether the flow actually holds together when clicked.

---

## 05 — Developer Handoff

**Goes in:** `05-handoff/`

- `README.md` written **for a developer, not for a designer**:
  - Spacing, type and colour tokens as a plain table, with names.
  - Component behaviour: what happens on hover, focus, disabled, loading.
  - Responsive rules: what changes, and at which breakpoint.
  - Anything ambiguous, called out explicitly.
- An exported **redline / spec image** for at least one complex screen.

**Judged on:** whether a developer could build your screen without asking you
a single question. That is the whole test.

---

## Sizes and formats

| Thing | Format | Limit |
|---|---|---|
| Screens, diagrams, specs | `.png` (or `.jpg` for photos) | 2 MB each |
| Icons, logos | `.svg` | — |
| Walkthrough | `.mp4` | 50 MB |
| Everything written | `.md` | — |

Do not commit `.fig` files, `.sketch` files, or zipped exports.
