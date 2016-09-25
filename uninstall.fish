functions -e __complement_ssh_host
bind | grep __complement_ssh_host | cut -d ' ' -f 2 | read -l COMPLEMENT_SSH_HOST_KEYBIND
eval bind -e $COMPLEMENT_SSH_HOST_KEYBINt
