function __register_complete_ssh_host_keybind --on-event fish_prompt
  not set -q COMPLETE_SSH_HOST_KEYBIND; and set -l COMPLETE_SSH_HOST_KEYBIND '\cs\cs'
  not set -q COMPLETE_SSH_HOST_SSH_CONFIG_PATH; and set -U COMPLETE_SSH_HOST_SSH_CONFIG_PATH '$HOME/.ssh/config' '$HOME/.ssh/conf.d/*' '$HOME/.ssh/conf.d/**/*'
  eval bind $COMPLETE_SSH_HOST_KEYBIND __complete_ssh_host
  functions -e __register_complete_ssh_host_keybind
end
