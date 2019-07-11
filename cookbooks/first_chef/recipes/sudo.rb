#
# Cookbook:: first_chef
# Recipe:: sudo
#
# Copyright:: 2019, The Authors, All Rights Reserved.

yum_package 'sudo' do
    action :install
end

cookbook_file '/etc/sudoers' do
    source 'sudoers'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

service 'sshd' do
    action :restart
end

