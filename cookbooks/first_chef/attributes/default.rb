#anything about assinments has to be defiend here.
if node['platform_family'] == 'debian'
  default['first_chef']['apache_package_name'] = 'apache2'
elsif node['platform_family'] == 'debian'
  default['first_chef']['apache_package_name'] = 'httpd'
end

default['first_chef']['php_packages'] = 'php'