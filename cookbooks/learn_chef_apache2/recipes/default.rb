#
# Cookbook Name:: learn_chef_apache2
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'apache2'

service 'apache2' do
	action [:start, :enable]
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end