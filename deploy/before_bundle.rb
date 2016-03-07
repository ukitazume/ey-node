max_file_open = 16384
pid = `pgrep -f god`.strip
sudo "prlimit --pid #{pid} --nofile=#{max_file_open}:#{max_file_open}"
