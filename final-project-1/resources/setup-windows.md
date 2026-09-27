# Setup — Windows

Everything you need on your laptop before the session. Do this **at home, the
day before**, not in the room. The download is large and the room's wifi will
not cope with twenty people doing it at once.

Budget 30 minutes, most of which is waiting.

---

## 1. Figma

1. Go to https://figma.com and make a free account.
2. Use an email you will still have after the course.
3. The free plan is enough for this entire project. Don't pay for anything.

That's the tool you'll actually design in. The rest of this page is about
seeing the product you're designing for.

---

## 2. Node.js

n8n runs on Node. You will not write any JavaScript — this is just the engine
it needs.

1. Go to https://nodejs.org/en/download
2. Choose **Windows Installer (.msi)**, **x64**, version **22.x LTS**.

   Not the newest version. **22.x.** The class is running n8n 1.x and that is
   the version it expects. A mismatch here is the single most common reason
   someone can't get it running.
3. Run the installer. Click Next through everything — the defaults are correct.
   If it offers "Tools for Native Modules", you can leave it unchecked.
4. Restart your computer. (Genuinely — this is how Windows picks up the new
   PATH, and skipping it causes the "command not found" problem below.)

### Check it worked

Open **Command Prompt** — press `Win`, type `cmd`, press Enter. Then:

```
node -v
```

You should see something starting with `v22.`. If you see `'node' is not
recognized`, you skipped the restart.

---

## 3. n8n

In the same Command Prompt window:

```
npx n8n@1
```

**Use Command Prompt, not PowerShell.** PowerShell blocks scripts by default
on most Windows installs and you'll get *"npx.ps1 cannot be loaded because
running scripts is disabled on this system"*. Command Prompt has no such
restriction. (If you must use PowerShell, type `npx.cmd n8n@1` instead.)

The first run downloads about a gigabyte. Expect **5 to 15 minutes** with a
lot of text scrolling past. Warnings in yellow saying `deprecated` are normal
and can be ignored.

### Windows will ask permission

A **Windows Defender Firewall** box will appear asking whether to allow Node.js
to communicate on networks.

- Tick **Private networks**
- Leave **Public networks** unticked
- Click **Allow access**

This is only so your own browser can reach the app on your own machine.
Nothing is exposed to the internet.

### When it's ready

The last lines will say:

```
Editor is now accessible via:
http://localhost:5678
```

Open that address in your browser.

### The account screen

n8n asks you to "Set up owner account" — email, name, password. There is no
way to skip it.

This account is **local to your laptop**. It is stored in a file on your own
machine and is not sent to n8n or anyone else. Any email works. Pick a
password you won't need to remember — you'll never use this again.

---

## 4. Load the class workflows

1. Download the three files from
   [`n8n-demo/workflows/`](../../n8n-demo/workflows) — open each one on GitHub
   and click the download button.
2. In n8n: **Workflows** → the **⋯** menu at the top right → **Import from
   File**.
3. Do this three times, one file each.

You should end up with `01 — Hello automation`, `02 — Branch and decide` and
`03 — This one breaks on purpose`.

Leave all three set to **Inactive**. That switch is for workflows that run on
a schedule; these run when you click the button.

---

## 5. Try it

Open `01 — Hello automation`, click **Execute Workflow** at the bottom, then
click on any box.

A panel opens showing **what went in on the left, and what came out on the
right**. That split is the entire idea behind this tool. Everything else in
n8n is a variation on it.

Then `02`, then `03`. `03` fails. It is supposed to.

---

## Stopping and restarting

To stop the server: click the Command Prompt window and press `Ctrl` + `C`.

To start it again later:

```
npx n8n@1
```

It is fast the second time — nothing is re-downloaded. Your workflows and your
account are still there.

---

## If something goes wrong

**`'node' is not recognized`**
You didn't restart after installing Node. Restart.

**`npx.ps1 cannot be loaded ... running scripts is disabled`**
You're in PowerShell. Use Command Prompt (`Win` → `cmd`), or type
`npx.cmd n8n@1`.

**`Your Node.js version is currently not supported by n8n`**
You installed the wrong Node version. It must be 22.x. Uninstall Node from
Add/Remove Programs, install 22.x LTS, restart.

**The download dies partway with a network error**
This leaves a broken half-install that makes every later attempt fail with a
strange "cannot find module" error. Clear it and start again:

```
npm cache clean --force
```

Then run `npx n8n@1` again, ideally on a better connection.

**`port 5678 is already in use`**
It's already running in another window. Find that window, or restart your
computer.

**It's been downloading for 30 minutes**
Antivirus software scans every file npm writes, and npm writes tens of
thousands of small files. It will finish. Leave it.

---

## On a Mac instead?

Same steps. Install Node 22 LTS from the same page (choose the macOS
installer, **Apple Silicon** for M1/M2/M3/M4 or **Intel** for older Macs), then
run `npx n8n@1` in **Terminal**. No firewall prompt, no PowerShell problem.

---

## Checklist

- [ ] Figma account, logged in
- [ ] `node -v` prints `v22.something`
- [ ] `npx n8n@1` opens http://localhost:5678
- [ ] Owner account created
- [ ] Three workflows imported and visible
- [ ] `01` runs and shows input/output when you click a node

If any box is unticked, message the instructor **before** the session.
