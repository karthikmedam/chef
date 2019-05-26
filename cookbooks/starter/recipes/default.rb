# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

#log "Welcome to Chef, #{node["starter_name"]}!" do
#  level :info
#end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html
# Lets create a file
file '/home/ubuntu' do
  content 'This is a file from chef'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
