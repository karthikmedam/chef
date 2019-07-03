#
# Cookbook:: first_chef
# Recipe:: SCCM.rb
#
# Copyright:: 2019, The Authors, All Rights Reserved.
remote_file '/tmp/sccm.tar' do
    source 'link'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

cookbook_file '/tmp/install' do
    source 'install'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

execute 'To install SCCM' do
    command '/tmp/install -mp anpxsccm2.amf.pacificlife.net --sitecode RS1 ccm-Universalx64.tar'
    action :run
end
