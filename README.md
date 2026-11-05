# m-term

Independent terminal package containing the real `term.lib.sh`,
`menu.lib.sh`, `menu` and standalone `read-key`, with their operational
manuals. `menu.lib.sh` consumes the selected `m-core` `array` and `map`
libraries plus `term.lib.sh` using the package-local POSIX dot-source
surface. `m` bootstrap and system-library `loadsyslib` stay in `m-os`.

The immutable `v0.1.0` GitHub release is built by `sh build.sh release`.
The real `pkg-catalog/pkg-schema-v2` definition publishes two shell
libraries and two commands, with archive checksum verification.

First-time interactive use from an existing `m-os/pkg-schema-v2` checkout
with a sibling `pkg-catalog/pkg-schema-v2` checkout already configured:

```sh
git -C ../pkg-catalog pull --ff-only
./m pkg install m-core@v0.1.0 m-term@v0.1.0
./m sh -c '. "$m_LIB_DIR/sys/sh/core.lib.sh"; context pkg=m-core@v0.1.0 pkg=m-term@v0.1.0; menu -H "Real m-term" First Second'
```

Run from an actual interactive terminal, use arrow keys and Enter to select,
then inspect the returned selection. The earlier GitHub-hosted Ubuntu real
package test covered installation, library loading and the `menu` command's
argument error path; **interactive TTY selection has not yet been verified**
on the operator's host. No fake menu or fake exported libraries are involved.
