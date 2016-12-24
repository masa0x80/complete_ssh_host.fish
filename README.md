# complete_ssh_host.fish

[![MIT LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)

## Overview

Fish plugin for completing host name based on `$HOME/.ssh/config`.

## Installation

With [fresco]
```
fresco masa0x80/complete_ssh_host.fish
```

With [fisherman]
```
fisher masa0x80/complete_ssh_host.fish
```

## Dependencies

- [ruby]
- [fzf], [peco] or [percol]

## Usage

### Complete host name

To complete host name to command line, type ctrl-s ctrl-s (`\cs\cs`).

## Setup

### `COMPLETE_SSH_HOST_KEYBIND`

`COMPLETE_SSH_HOST_KEYBIND` is the key binding to start the input completion for host name.
It is defaulted to `\cs\cs` (ctrl-s ctrl-s).

`COMPLETE_SSH_HOST_CONFIG_PATTERN` is the pattern of `ssh_config` file paths.
It is defaulted to `$HOME/.ssh/{config,conf.d/**/*}`.

## Bibliography

[ruby]: https://www.ruby-lang.org/
[fzf]: https://github.com/junegunn/fzf
[peco]: https://github.com/peco/peco
[percol]: https://github.com/mooz/percol
[fresco]: https://github.com/masa0x80/fresco
[fisherman]: https://github.com/fisherman/fisherman
[assh]: https://github.com/moul/advanced-ssh-config
