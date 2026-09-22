# UI/UX Final Project

Final project for the UI/UX track at TAYEL AI LABS.

Students design a real product end to end — research, wireframes, UI, an
interactive prototype, and a developer handoff. The work lives in Figma; this
repository is where the exported evidence of that work is stored, reviewed,
and graded.

## What you do, in one paragraph

You are designing the interface for an **AI automation tool**. The backend
already exists: it is an [n8n](https://n8n.io) instance running workflows —
triggers, steps, branches, runs that succeed or fail. Nobody has ever designed
a human-friendly face for it. That is your job. You are not asked to write any
code.

Read [`brief/01-brief.md`](brief/01-brief.md) first. Everything else follows
from it.

## Folder map

| Folder | What's in it |
|---|---|
| `brief/` | The assignment: brief, deliverables, rubric, timeline, how to submit. |
| `resources/` | Figma setup, export conventions, references, accessibility checklist. |
| `submissions/` | One folder per student. Copy `_TEMPLATE/` to start. |
| `assets/` | Shared material — brand files, logos, anything given to everyone. |
| `scripts/` | Small helpers (e.g. creating a submission folder). |

## Getting started

```bash
cd final-project-1
./scripts/new-submission.sh "your-name"
```

Then open the README it creates inside your folder and work through it.

## Rules that matter

- **Figma is the source of truth.** The repo holds exports, not live design files.
- **Export flat images, not design files.** No `.fig` binaries in git.
- **Every folder needs a README.** A screenshot with no explanation scores zero
  on rationale, which is half the rubric.
- **Do not edit anyone else's submission folder.** Yours only.
