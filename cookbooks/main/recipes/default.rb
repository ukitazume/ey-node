# include_recipe "custom_php_ini"
# include_recipe "jenkins_on_util"
#include_recipe "fix_maintenance_nginx"
# include_recipe "mongodb"
include_recipe "node_0_10"
include_recipe "kill_god"
include_recipe "around-node-stack-error"
