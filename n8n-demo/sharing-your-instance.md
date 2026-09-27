# Sharing your instance instead of installing on twenty laptops

Before you send everyone the Windows setup guide, consider not sending it.

## The cost of everyone installing

Each student downloads roughly a gigabyte, on Windows, with antivirus scanning
every file. Some of them will hit the PowerShell script-blocking error, some
will install the wrong Node version, and at least one will have a laptop that
can't do it at all. You will spend the first thirty minutes of your session
being tech support instead of teaching.

For a course where **nobody is asked to build a workflow**, that is a lot of
friction to buy very little.

## The alternative

Run it on your Mac only, and let them reach it over the room's wifi.

```bash
cd ~/n8n-course-demo && N8N_USER_FOLDER="$HOME/n8n-course-demo/home" \
  N8N_LISTEN_ADDRESS=0.0.0.0 N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false \
  N8N_DIAGNOSTICS_ENABLED=false N8N_RUNNERS_ENABLED=true \
  ./node_modules/.bin/n8n start
```

Find your local IP:

```bash
ipconfig getifaddr en0
```

Then write `http://<that-ip>:5678` on the board. They open it on their own
laptops and watch the same instance you are driving.

### What to know before you rely on this

- **Test it in the actual room, on the actual wifi, the day before.** Many
  cafe, campus and office networks have client isolation turned on, which
  blocks devices from reaching each other. If that's on, this doesn't work and
  you need the fallback below.
- **They share one instance.** If a student clicks Execute, everyone sees it.
  That can be a feature — or chaos. Say up front that they watch, and you
  drive.
- **Your Mac's firewall** will ask permission the first time. Allow it.
- This is your machine on a shared network. Turn it off when the session ends.

## The simplest fallback

Screen share. You run the three workflows on the projector, they watch.

For this session that is genuinely enough: the goal is for them to *see* how
bad the failure screen is, not to operate the tool. Nothing in the final
project requires them to have ever run n8n themselves.

## When installing locally is actually worth it

If your students are the kind who will go and build something on their own
afterwards, the install pays for itself. Send the guide a week ahead, tell
them to message you if they get stuck, and treat anyone who arrives without it
working as a screen-share watcher rather than a problem to fix mid-session.
