################################################################################
directory "/opt/nagios/plugins/git"
################################################################################
link "#{node['check_elasticsearch']['install_dir']}/check_elasticsearch" do
  
  to     "#{node['check_elasticsearch']['install_dir']}/git/check_elasticsearch/check_elasticsearch"
  action :nothing
  
end
################################################################################
file "#{node['check_elasticsearch']['install_dir']}/git/check_elasticsearch/check_elasticsearch" do
  
  mode   "0555"
  action :nothing
  
end
################################################################################
git "#{node['check_elasticsearch']['install_dir']}/git/check_elasticsearch" do
  
  repository node['check_elasticsearch']['git']['repository']
  revision   node['check_elasticsearch']['git']['branch']
  
  notifies   :create, "file[#{node['check_elasticsearch']['install_dir']}/git/check_elasticsearch/check_elasticsearch]"
  notifies   :create, "link[#{node['check_elasticsearch']['install_dir']}/check_elasticsearch]"
  
end
