max_file_open = 16384
pid = sudo "pgrep -f god"
sudo "prlimit --pid #{pid} --nofile=#{max_file_open}:#{max_file_open}"
