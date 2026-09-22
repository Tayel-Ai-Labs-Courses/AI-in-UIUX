# n8n Demo — instructor material

Three tiny workflows for the session where you explain n8n to the class. They
are the setup for Final Project 1: the students see the real tool, find it
confusing in specific ways, and then get asked to redesign it.

**This folder is for the instructor.** Students don't need to import anything —
they watch, and they screenshot.

## Before the session

Start n8n on your machine:

```bash
npx n8n
```

Open http://localhost:5678.

Then import each file: **Workflows → ⋯ (top right) → Import from File**.

Import all three before class, not during it. Do it once on the machine and
projector you'll actually teach from.

## The workflows

| File | Runs for | The point |
|---|---|---|
| `01-hello-automation.json` | ~5 min | Data goes in one side of a node and comes out the other. That's all a workflow is. |
| `02-branch-and-decide.json` | ~10 min | Workflows split. The canvas stops being a line. |
| `03-this-one-breaks.json` | ~15 min | It fails, and the failure screen is bad. This is the project brief. |

Each one has a sticky note on the canvas with the lesson and the questions to
ask. Read them before you teach — the questions are the part that matters, not
the workflows.

## Running order, with the timing

**1. Hello automation (5 min).** Run it. Click each node. Point at the
input/output split and say: this is the only concept in n8n. Everything else
is a variation.

**2. Branch and decide (10 min).** Run it with `total = 210`, then change it to
`50` and run again. Let them watch the path change. Then ask the canvas
question on the sticky — how do you show *which path my data took* without
drawing the whole map? Don't answer it. It's their project.

**3. This one breaks (15 min).** Run it. Say nothing for thirty seconds. Let
them read the failure screen cold and get annoyed by it. Then ask the four
questions on the sticky.

**Tell them to screenshot this screen.** It goes in `01-research/` and it is
the thing deliverable 4 asks them to redesign.

## Why these are deliberately ugly

No colour, no clever nodes, no AI step. Designers in a room with a new tool
will look at the tool's visual design and have opinions about the shade of
grey. These workflows give them nothing to look at, so they look at the
*structure* — which is the thing you actually want them arguing about.

## Then show them the real thing

After the three demos, open your own n8n with real workflows in it, if you have
any. The jump from three clean boxes to an actual messy instance is the moment
the project stops being abstract. Twenty workflows, half of them failing, is a
better brief than anything written down.

Skip this if your real instance has client data in it.

## Not verified against your n8n version

These files were written by hand, not exported from a running n8n, so the node
type versions (`set` 3.4, `if` 2.2, `httpRequest` 4.2) are best guesses at what
your instance expects. They match current n8n 1.x.

**Import all three well before the session.** If one refuses to import, it is
a version mismatch in those numbers and is quick to fix — but not while thirty
people are watching you.
