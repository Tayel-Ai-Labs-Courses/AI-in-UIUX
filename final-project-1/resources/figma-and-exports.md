# Figma Setup & Export Conventions

## File structure in Figma

One file. Pages in this order:

```
📄 Cover
📄 01 Research
📄 02 Wireframes
📄 03 Design System
📄 04 UI — Desktop
📄 05 UI — Mobile
📄 06 Prototype
📄 🗑 Archive
```

Keep an Archive page. Never delete a rejected direction — you need it for the
rationale, and "what I rejected and why" is worth real points.

## Frame naming

Name frames the way you will name the exported files. Then export is one click
and your file names are consistent for free.

```
01-dashboard-desktop
02-dashboard-desktop-empty
03-dashboard-desktop-error
04-dashboard-mobile
```

## Non-negotiables inside Figma

- **Styles for colour and type.** If you are picking hex codes by hand on each
  screen, you do not have a design system, and section 3 of the rubric knows.
- **Components for anything used twice.** Buttons, inputs, cards, nodes,
  status badges. With variants for their states.
- **Auto Layout.** Not optional at this level. A screen that falls apart when
  a string gets longer is a screen that will fall apart in production.
- **An 8px spacing scale.** 4, 8, 12, 16, 24, 32, 48, 64. Nothing in between.

## Exporting

- **Screens:** PNG, 2x. If a file lands over 2 MB, export at 1x instead.
- **Diagrams and the design system page:** PNG, 2x.
- **Icons and logos:** SVG.
- **Never** export `.fig` into the repo. The Figma link is how live files are
  shared.

## The walkthrough video

Screen-record with sound if you can. Under 3 minutes, under 50 MB. If it is
over: export at 1080p, 30fps, and stop recording yourself dragging the mouse
around thinking.

## Sharing

`Share → Anyone with the link → can view`. Then check it in a private window.
Every cohort, someone submits a locked link. Do not be that person.
