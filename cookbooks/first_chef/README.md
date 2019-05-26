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