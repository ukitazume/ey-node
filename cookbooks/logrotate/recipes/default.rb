#
# Cookbook Name:: logrotate
# Recipe:: default
#

template "/etc/logrotate.d/pm2" do
  owner "root"
  group "root"
  mode "0644"
  source "pm2.erb"
  backup 0
end
