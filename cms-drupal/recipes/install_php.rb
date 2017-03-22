#
# Cookbook:: cms-drupal
# Recipe:: install_php
#
# Copyright:: 2017, The Authors, All Rights Reserved.

phpdeps=node['php']['packages']

phpdeps.each do | phpdep |
	package phpdep
end


service "apache2" do
	action :restart
end
