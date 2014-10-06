enable_package "net-libs/nodejs" do
  version "0.10.28"
end

package "net-libs/nodejs" do
  version "0.10.28"
  action :install
end

execute "install pm2" do
  command "/opt/nodejs/0.10.28/bin/npm install pm2 -g --unsafe-perm"
end

node[:applications].each do |app_name, _|
  template "/engineyard/bin/app_#{app_name}" do
    owner node[:owner_name]
    group node[:owner_name]
    backup false
    mode 0755
    source "app_init.erb"
    variables({
      :app => app_name
    })
  end
end
