#
# Cookbook:: first_chef
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/home/ubuntu/test.txt' do
    content 'content'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end
apt_package 'apache2' do
    action :install
end

apt_update 'update packages' do
    action :update
end

#chef doesn't support two resources with same name and type, so use differently

#apt_package 'apache2-' do
#    package_name 'apache2'
#    action :uninstall
#end

service 'apache2' do
    action :restart
end
#Modified the name as it will not support same resource
apt_update ‘update packages1’ do
	ignore_failure true
	action :update
	only_if node[‘platform’] == ‘debian’
end
#Similarly we can also write
If node[‘platform’] == ‘debian’
	apt_update ‘update packages’ do
	ignore_failure true
	action :update
	end
end

