function __register_complement_ssh_host_keybind --on-event fish_prompt
  not set -q COMPLEMENT_SSH_HOST_KEYBIND; and set -l COMPLEMENT_SSH_HOST_KEYBIND '\cs\cs'
  eval bind $COMPLEMENT_SSH_HOST_KEYBIND __complement_ssh_host
  functions -e __register_complement_ssh_host_keybind
end
