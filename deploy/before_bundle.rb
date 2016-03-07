max_file_open = 16384
sudo "GODPID=`pgrep -f god` && prlimit --pid $GODPID --nofile=#{max_file_open}:#{max_file_open}"
