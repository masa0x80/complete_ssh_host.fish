# complement_ssh_host.fish

[![MIT LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)

## Overview

Fish plugin for complementing host name based on `$HOME/.ssh/config`.
If you use [assh] instead of `ssh`, you can use this plugin.

## Installation

With [fresco]
```
fresco masa0x80/complement_ssh_host.fish
```

With [fisherman]
```
fisher masa0x80/complement_ssh_host.fish
```

## Dependencies

- [ruby]
- [fzf]

## Usage

To insert host name to command line, type ctrl-s ctrl-s (`\cs\cs`).

## Setup

### `COMPLEMENT_SSH_HOST_KEYBIND`

`COMPLEMENT_SSH_HOST_KEYBIND` is the key binding to start the input completion for host name.
It is defaulted to `\cs\cs` (ctrl-s ctrl-s).

## Bibliography

[ruby]: https://www.ruby-lang.org/
[fzf]: https://github.com/junegunn/fzf
[fresco]: https://github.com/masa0x80/fresco
[fisherman]: https://github.com/fisherman/fisherman
[assh]: https://github.com/moul/advanced-ssh-config
