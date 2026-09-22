# How to Submit

You work in Figma. The repo holds the exported evidence. Nothing here asks you
to be comfortable with git beyond copying a folder and sending files.

## If you don't use git

Export your files, put them in your folder in the template structure, and send
the folder to the instructor. He commits it for you. **Keep the structure and
the file names exactly as the template has them** — that is the whole ask.

## If you do use git

```bash
cd final-project-1
./scripts/new-submission.sh "your-name"
git checkout -b submission/your-name
git add submissions/your-name
git commit -m "Week 1: research and competitive teardown"
git push -u origin submission/your-name
```

One branch for the whole project. Commit at the end of each week. Open a pull
request when you're finished, titled `Final project — Your Name`.

## Your folder

```
submissions/your-name/
├── README.md              <- your index: who you are, which user you chose, prototype link
├── 01-research/
├── 02-wireframes/
├── 03-ui/
├── 04-prototype/
└── 05-handoff/
```

Each numbered folder has its own `README.md`. The template ships with them —
fill them in, don't delete them.

## File naming

Lowercase, hyphens, numbered in reading order. No spaces, no Arabic in file
names (Arabic inside the files is fine).

```
01-dashboard-desktop.png
02-dashboard-mobile.png
03-dashboard-empty.png
04-canvas-desktop.png
```

Not: `Final Dashboard (2) FINAL v3 copy.png`

## The Figma link

In `04-prototype/README.md`, as a plain markdown link. Set sharing to **anyone
with the link can view**. Then open it in a private browser window and confirm
it loads. A locked link costs 10 points and is the most common avoidable
mistake in this project.

## Before you submit — checklist

- [ ] All four required screens present, desktop
- [ ] Dashboard and failure state also at 375px
- [ ] Empty, loading and error states for every screen
- [ ] Design system page exported
- [ ] Prototype link tested in a private window
- [ ] `walkthrough.mp4` under 3 minutes and under 50 MB
- [ ] Every folder's README filled in — decisions, not descriptions
- [ ] Any UI kit or template you used is credited
- [ ] No `.fig`, `.sketch`, `.zip` or files over 2 MB (except the video)
- [ ] File names lowercase and hyphenated
