#
# Cookbook:: cms-drupal
# Recipe:: install_php
#
# Copyright:: 2017, The Authors, All Rights Reserved.

phpdeps=node['php']['packages']

phpdeps.each do | phpdep |
	package phpdep
end

template "/tmp/config.php" do
	source "config.php.erb"
	owner "ubuntu"
	mode "0755"
end

service "apache2" do
	action :restart
end
