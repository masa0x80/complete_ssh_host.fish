function __complement_ssh_host
  ruby -e "File.read('$HOME/.ssh/config').scan(/Host ([^*?\s]+)\n(?:  .*\n)*  #?\s?HostName:? ([^\n]+)\n/i).each do |config|
    puts '%s # %s' % [config[0].ljust(30, ' '), config[1]]
  end" | sort | angler | read -l selected_line

  set -l host (echo $selected_line | cut -d ' ' -f 1)
  set -l note (echo $selected_line | cut -d '#' -f 2)

  if test -n "$selected_line"
    commandline -a "$host #$note"
  end
  commandline -f repaint
end
