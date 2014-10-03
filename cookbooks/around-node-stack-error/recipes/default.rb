node[:applications].each do |app_name, _|
  file "/etc/nginx/servers/#{app_name}.tcp_conf" do
    action :delete
  end

  file "/etc/nginx/servers/keep.#{app_name}.tcp_conf" do
    action :touch
  end
end
