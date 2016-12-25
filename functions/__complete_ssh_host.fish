function __complete_ssh_host
  command egrep -i '^Host\s+.+' (eval echo $COMPLETE_SSH_HOST_SSH_CONFIG_PATH | string split ' ') ^/dev/null | command egrep -v '[*?]' | awk '{print $2}' | sort | angler | read -l host

  if test -n "$host"
    commandline -a "$host"
  end
  commandline -f repaint
end
