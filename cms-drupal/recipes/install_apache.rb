#
# Cookbook:: cms-drupal
# Recipe:: install_apache
#
# Copyright:: 2017, The Authors, All Rights Reserved.



package "apache2"


service "apache2" do
	action [:enable, :start]
end
