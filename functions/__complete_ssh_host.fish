function __complete_ssh_host
  ruby -e "Dir.glob('$COMPLETE_SSH_HOST_SSH_CONFIG_PATTERN').map do |file|
    File.read(file).scan(/Host ([^*?\s]+)\n(?:[^#H\s][^\n]*\n)*/i).each do |m|
      puts m[0]
    end
  end" | sort | angler | read -l selected_line

  set -l host (echo $selected_line | cut -d ' ' -f 1)

  if test -n "$selected_line"
    commandline -a "$host"
  end
  commandline -f repaint
end
