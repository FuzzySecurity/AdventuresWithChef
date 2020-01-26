#
# Cookbook:: nginx-revprox
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Do a version check here, add seperate recipes per OS
# Supported OS: ~> Ubuntu 18.04

if node['platform'] == 'ubuntu' && node['platform_version'] == '18.04'
	include_recipe 'nginx-revprox::ubuntu_1804_nginx'
end
