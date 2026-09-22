# Understanding n8n (one hour, no code)

You cannot design a good interface for something you have never used. Spend an
hour in n8n. You will not write code — you will drag boxes and connect them.

## Getting in

The instructor runs an n8n instance locally and will demo it in class using
the three workflows in [`n8n-demo/`](../../n8n-demo). You can run your own
copy too — it is one command and installs nothing permanently:

```bash
npx n8n@1
```

Then open http://localhost:5678 in a browser. That is the whole install.

## The vocabulary you need

| Term | What it actually is |
|---|---|
| **Workflow** | One automation. A chain of steps, saved under a name. |
| **Node** | One step in the chain. A box on the canvas. |
| **Trigger** | The first node. What starts it — a form, a schedule, a webhook. |
| **Connection** | The line between nodes. Data flows along it. |
| **Execution / run** | One time the workflow fired. Succeeded, failed, or running. |
| **Credential** | A saved login for a service the workflow talks to. |
| **Webhook** | A URL that, when hit, starts a workflow. |
| **Branch** | An IF node — the path splits based on a condition. |

## The hour, spent well

1. **Build something trivial.** Schedule trigger → set a value → send yourself
   an email. Run it. Watch it succeed.
2. **Break it on purpose.** Put in a wrong email address. Run it again. Now
   look hard at what the interface tells you. Screenshot it. This screen is
   the one you are being asked to redesign — the fourth required screen.
3. **Add a branch.** Watch what the canvas does when a workflow stops being a
   straight line. This is the hardest part of the canvas design.
4. **Open the executions list.** Imagine forty workflows here instead of three.
   That view is the second required screen.

## What to bring back

Screenshots of the moments where you thought "I have no idea what this is
telling me." Those moments are your project. Put them in `01-research/`.
