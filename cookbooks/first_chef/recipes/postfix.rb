#
# Cookbook:: first_chef
# Recipe:: postfix
#
# Copyright:: 2019, The Authors, All Rights Reserved.
remote_file '/tmp' do
    source 'http://rpmfind.net/linux/opensuse/tumbleweed/repo/oss/i586/postfix-3.4.5-4.1.i586.rpm'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

#To execute the package
rpm_package '/tmp/postfix-3.4.5-4.1.i586.rpm' do
    action :install
  end
yum_package 'postfix' do
    action :install
end

#To change the configurations:
cookbook_file '/etc/postfix/main.cf' do
    source 'postfix.conf'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

#To start the service
service 'postfix' do
    action [ :enable :start]
end





