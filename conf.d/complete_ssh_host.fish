function __register_complete_ssh_host_keybind --on-event fish_prompt
    if not set -q COMPLETE_SSH_HOST_KEYBIND
        set COMPLETE_SSH_HOST_KEYBIND '\cs\cs'
    end
    eval bind $COMPLETE_SSH_HOST_KEYBIND __complete_ssh_host
    functions -e __register_complete_ssh_host_keybind
end
