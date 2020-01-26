#
# Cookbook:: nginx-revprox
# Recipe:: ubuntu_1804_nginx
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Install nginx
package 'nginx' do
	action :install
end

# Write our index template
template '/var/www/html/index.html' do
	source 'WebIndex.erb'
	owner 'root'
	group 'root'
	mode '0755'
	action :create
	variables ({
		:platform => node['platform'],
		:version => node['platform_version'],
		:ip => node['ipaddress']
	})
end

# Replace old sites-available/default
template '/etc/nginx/sites-available/default' do
	source 'proxy_pass.erb'
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

# Reload config & start the service
service 'nginx' do
	action [:reload, :start, :enable]
end
