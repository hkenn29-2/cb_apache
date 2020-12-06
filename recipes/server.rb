#
# Cookbook:: cb_apache
# Recipe:: server
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "
    <h1>Hello mate</h1>
    <h2>Hostname: #{node['hostname']}</h2>
    <h2>IP: #{node['ipaddress']}</h2>
  "
end

service 'httpd' do
  action [ :enable, :start ]
end
