# first_chef

TODO: Enter the cookbook description here.

## lamp stack deployment on the node.

* This is for deploying any php application

No firewall - as AWS has its own and no server details as we have dns
###steps
```
sudo apt-get update
sudo apt-get install apache2/nginx -y
# hht://<plulicip>
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
sudo systemctl restart apache2
sudo aptget install php-cli
sudo nano /var/www/html/info.php
#<?php
#phpinfo();
# ?>
http://
```
https://github.com/chefosaurus/easy-windows-chef-workstation
https://github.com/Nordstrom/chefdk_bootstrap
# Install the ChefDK
remote_file 'C:\Users\user\Downloads/ChefDK.msi' do
  action :create
  source 'https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/x86_64/chefdk-0.6.0-1.msi'
end

windows_package "ChefDK" do
  action :install
  source 'C:\Users\user\Downloads/ChefDK.msi'
end