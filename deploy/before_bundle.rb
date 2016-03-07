max_file_open = 16384
sudo "export GODPID=`pgrep -f god`"
sudo "prlimit --pid $GODPID --nofile=#{max_file_open}:#{max_file_open}"
