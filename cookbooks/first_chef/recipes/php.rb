##why
#This cookbook helps in installing lampstack on Ubuntu and redhat

## references
package 'node['first_chef']['php_packages']' do
    action :install
end

service node['first_chef']['apache_package_name'] do
    action :restart
end
#this will fail, because two resurces are using same name. so use differently


#service node 'restart webserver' do
#    service_name node['first_chef']['apache_package_name']
#    action :restart
#end

# file has to be created.
file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
end

service 'restarted' do
    service_name node['first_chef']['apache_package_name']
    action :start
end
