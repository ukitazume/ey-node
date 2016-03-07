max_file_open = 16384
sudo "pgrep -f god > /tmp/godpid"
sudo "prlimit --pid $(cat /tmp/godpid) --nofile=#{max_file_open}:#{max_file_open}"
