---
description: Show the current wclaw daemon status
disable-model-invocation: true
---

Check the wclaw daemon status by running:

```bash
CC_BIN="${HOME}/.wclaw/bin/wclaw"; [ -x "$CC_BIN" ] || CC_BIN="${CLAUDE_PLUGIN_ROOT}/bin/wclaw"; "$CC_BIN" statusline
```

Report the daemon status to the user.
