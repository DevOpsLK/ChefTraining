#
# Cookbook:: cms-drupal
# Recipe:: download_drupal
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "download_drupal" do
	command "wget https://ftp.drupal.org/files/projects/drupal-8.2.7.tar.gz"
	cwd "/tmp"
end

execute "empty_html_dir" do
	command "rm -rf /var/www/html/* |:"
end

execute "extract_drupal" do
	command "tar -xf /tmp/drupal-8.2.7.tar.gz --strip 1 -C /var/www/html"
end

