---
description: Stop the wclaw daemon gracefully
disable-model-invocation: true
---

Stop the wclaw daemon gracefully and report the output:

```bash
CC_BIN="${HOME}/.wclaw/bin/wclaw"; [ -x "$CC_BIN" ] || CC_BIN="${CLAUDE_PLUGIN_ROOT}/bin/wclaw"; "$CC_BIN" stop
```
