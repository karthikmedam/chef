#
# Cookbook:: first_chef
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
# call the needed recipes


# failing recipe execution on unsupported platforms

#If platform of the node is unsupported by my cookbook.i will have to fail.
--> in ansible we have fail module, in chef also resource raise/throw/fail
if node['platform_family'] == 'debian' || node['platform_family'] == 'redhat'
 #   include_recipe 'first_chef::apache'
 #   include_recipe 'first_chef::php'
     include_recipe 'first_chef::postfix'
else 
    #fail the resource
end
