max_file_open = 16384
sudo "prlimit --pid $(pgrep -f god) --nofile=#{max_file_open}:#{max_file_open}"
