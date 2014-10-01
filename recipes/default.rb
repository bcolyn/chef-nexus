#
# Cookbook Name:: nexus
# Recipe:: default
#
include_recipe 'ark'

user node['nexus']['user'] do
  comment 'Nexus OSS repository user'
  home node['nexus']['install_dir']
  system true
end

ark 'nexus' do
  url node['nexus']['download_url']
  version node['nexus']['version']
  checksum node['nexus']['sha256']
  home_dir node['nexus']['install_dir']
  owner node['nexus']['user']
  action :install
end

directory node['nexus']['data_dir'] do
  owner node['nexus']['user']
  action :create
end

template "#{node['nexus']['install_dir']}/conf/nexus.properties" do
  source 'nexus.properties.erb'
  owner node['nexus']['user']
  mode   '0644'
  notifies :reload, 'service[nexus]'
end

template "/etc/init.d/nexus" do
  source "nexus.init.erb"
  owner 'root'
  mode  0755
end

service "nexus" do
  action 		[:enable, :start]
  supports	:status => true, :start => true, :stop => false, :restart => true
end