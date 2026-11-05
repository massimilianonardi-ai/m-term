# m-term

Source repository for the existing technical terminal capability: `term.lib.sh`, `menu.lib.sh`, `menu` and standalone `read-key`, together with their operational manuals. Sources are imported intact from the current `rumiai-os` tree; they retain their original relative runtime paths at this extraction stage.

`menu` consumes `term` and the shared `array` and `map` libraries. `m` bootstrap/core remains owned by `m-os`. Building an installable `pkg` v2 distribution and verifying it on a real host are separate steps; this source import alone does not claim either.
