# The Brief

## The product

An AI automation platform. Under the hood it is an n8n instance: users build
**workflows** made of **nodes** (a trigger, then steps: fetch data, call an AI
model, branch on a condition, send an email). Each time a workflow fires it
produces a **run**, which either succeeds, fails at a specific node, or is
still going.

n8n's own interface was built for developers. Your users are not developers.

## Who you are designing for

Pick **one** of these and design for them specifically. Do not try to serve all
three — a product that serves everyone serves no one, and the rubric rewards a
sharp point of view.

1. **The small-business owner.** Runs a cafe, a clinic, a store. Wants
   "when someone fills my form, add them to my sheet and WhatsApp me." Has
   never seen a flowchart. Will abandon anything that shows an error code.
2. **The marketing operator.** Comfortable with tools, not with code. Runs
   dozens of automations at once. Their pain is not building — it is knowing
   which of their 40 workflows quietly broke last night.
3. **The agency developer.** Technical, fast, builds automations for clients.
   Wants keyboard shortcuts, bulk actions, and to never touch a mouse. Their
   pain is repetition and handing work over to a non-technical client.

Write your choice, and *why*, on the first page of your research deliverable.

## The screens you must design

At minimum, design these four. Anything beyond is bonus, not a substitute.

1. **The dashboard.** The first thing seen after login. It must answer, in one
   glance and without scrolling: is everything fine right now, and if not,
   what broke?
2. **The workflow canvas.** Where a workflow is built or read. This is the
   hardest screen in the project. Nodes, connections, the path data takes. Do
   not copy n8n's canvas — solve it for *your* user.
3. **The run history / detail view.** A list of runs, and one run opened up:
   what happened, at which step, and what a user can do about it.
4. **The failure state.** A workflow broke at 3am. Design what the user sees.
   Be specific: which node, what the error was, what the fix is, and how to
   re-run. A generic "Something went wrong" toast will fail this deliverable.

## Constraints

- **Mobile matters.** At least the dashboard and the failure state must be
  designed at 375px as well as desktop. Users check whether things are broken
  from their phone, not their desk.
- **Empty, loading, and error states are required**, not optional polish. A
  screen designed only in its happy state is half a screen.
- **Accessible by default.** Text contrast at 4.5:1 minimum, and never use
  colour alone to carry meaning — a red dot and a green dot look identical to
  a large number of people. See `resources/accessibility-checklist.md`.
- **Light and dark.** Pick one and do it properly. Both is bonus.
- **Arabic is bonus, not required.** If you do it, do it honestly: real RTL
  layout mirroring, not a translated LTR screen.

## What you are not asked to do

- Write code. Zero lines.
- Design a marketing site, a pricing page, or a logo.
- Build an actual n8n workflow (though playing with n8n for an hour will make
  your design ten times better — see `resources/understanding-n8n.md`).

## The one thing that decides your grade

Not how pretty it is. **Whether you can explain why.** Every screen you submit
needs a paragraph next to it saying what decision you made and what you
rejected. A plain screen with sharp reasoning beats a beautiful screen with
none — every single time.
