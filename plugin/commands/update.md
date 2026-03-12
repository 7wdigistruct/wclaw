---
description: Update wclaw to the latest release
disable-model-invocation: true
---

Update the wclaw binary to the latest release by running:

```bash
CC_BIN="${HOME}/.wclaw/bin/wclaw"; [ -x "$CC_BIN" ] || CC_BIN="${CLAUDE_PLUGIN_ROOT}/bin/wclaw"; "$CC_BIN" update
```

Report the output. If the daemon was running, it will be stopped, updated, and restarted automatically.

After the update completes, run `/reload-plugins` to pick up the new plugin files (commands, hooks, etc.) in the current session.
