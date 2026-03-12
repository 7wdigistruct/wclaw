---
description: Start the wclaw daemon in the background
disable-model-invocation: true
---

Start the wclaw daemon by running:

```bash
CC_BIN="${HOME}/.wclaw/bin/wclaw"; [ -x "$CC_BIN" ] || CC_BIN="${CLAUDE_PLUGIN_ROOT}/bin/wclaw"; "$CC_BIN" start
```

Report the output. If it fails, check `/tmp/wclaw.log` for errors.
