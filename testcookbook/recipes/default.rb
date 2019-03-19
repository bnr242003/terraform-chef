#
# Cookbook:: application
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'nginx'

service 'nginx' do
  action [ :enable, :start ]
end

cookbook_file '/usr/share/nginx/html/index.html' do
  source 'index.html'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end





