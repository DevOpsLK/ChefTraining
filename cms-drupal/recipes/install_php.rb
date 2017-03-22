#
# Cookbook:: cms-drupal
# Recipe:: install_php
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package "php7"

service "apache2" do
	action :restart
end
