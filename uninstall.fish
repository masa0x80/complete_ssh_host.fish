functions -e __complete_ssh_host
bind | grep __complete_ssh_host | cut -d ' ' -f 2 | read -l COMPLETE_SSH_HOST_KEYBIND
eval bind -e $COMPLETE_SSH_HOST_KEYBIND
set -e COMPLETE_SSH_HOST_SSH_CONFIG_PATH
