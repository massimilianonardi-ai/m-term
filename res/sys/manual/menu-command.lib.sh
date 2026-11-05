NAME
    menu-command.lib.sh - source-only menu command implementation

SYNOPSIS
    . menu-command.lib.sh
    menu_command_main [menu-options-and-operands...]

DESCRIPTION
    Provides the same menu command processing and filesystem browsing
    implementation used by the native package-owned menu executable. It
    is a sourced POSIX-sh library, not an independent executable and not
    a separately implemented remote menu.

    The calling shell must already provide the common m base functions
    (including quote and fatal) and the array, map, term and menu shell
    facilities. Native menu loads those via its package-local source views.
    A generated injection stream must embed them explicitly in dependency
    order, then embed this library. No remote m filesystem is needed.

FUNCTIONS
    menu_command_main [menu-options-and-operands...]
        Execute the full menu CLI semantics in the caller's shell.
        Options, selection behavior, filesystem browsing, output and
        statuses correspond to the menu manual. The caller may invoke
        the function inside an isolated command/subshell if desired.

    The underscore-prefixed helper functions are internal implementation
    details and are not callable API.

STATUS
    On ordinary selection/cancellation, the menu result status is returned.
    Invalid invocation and runtime failures follow the menu command contract.
    Fatal diagnostics may exit the containing shell: use a subshell for an
    isolated invocation, as native execution and generated injected
    command wrappers do.

SEE ALSO
    menu
    menu.lib.sh
    term.lib.sh
