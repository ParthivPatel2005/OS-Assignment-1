### Assignment 1 Changes

- uptime command

  - File added: `usr/uptime.c`
  - Build: added `_uptime` to `usr/Makefile` UPROGS.
  - Usage: `uptime` prints number of clock ticks since boot.

- pause command

  - File added: `usr/pause.c`
  - Build: added `_pause` to `usr/Makefile` UPROGS.
  - Behavior: `pause <seconds>` sleeps for given seconds using `sleep(seconds*HZ)`; errors if missing arg or negative.

- ps command and kernel support

  - Kernel edits:
    - `proc.h`: add `int syscall_count;` to `struct proc`.
    - `syscall.c`: increment `proc->syscall_count` on each valid syscall; register new syscall.
    - `syscall.h`: add `SYS_getprocs` number 22.
    - `sysproc.c`: add `sys_getprocs` entry point.
    - `proc.c`: add `collect_procs(struct uproc*, int)` to snapshot process table.
    - `defs.h`: declare `collect_procs`.
  - User space:
    - File added: `usr/uproc.h` (struct shared for `getprocs`).
    - File added: `usr/ps.c` implements printing: PID, PPID, STATE, SYSCALLS, NAME.
    - `usr/user.h`: declare `getprocs`.
    - `usr/usys.S`: add `SYSCALL(getprocs)` stub.
    - Build: added `_ps` to `usr/Makefile` UPROGS.

- Shell tab completion
  - File edited: `usr/sh.c` in `getcmd` to handle a trailing TAB:
    - Completes the first token by scanning `/` directory for names with the given prefix.
    - If unique, replaces token and echoes completed line.
    - If multiple, lists candidates and reprints prompt with current buffer.

Notes

- `HZ` is 10 (see `param.h`), so uptime ticks/10 ≈ seconds.
- Build and run: `make qemu` from repo root.
