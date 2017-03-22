#
# Cookbook:: cms-drupal
# Recipe:: download_drupal
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "download_drupal" do
	command "wget https://ftp.drupal.org/files/projects/drupal-8.2.7.tar.gz"
	cwd "/tmp"
end


