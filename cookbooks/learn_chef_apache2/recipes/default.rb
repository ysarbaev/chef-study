#
# Cookbook Name:: learn_chef_apache2
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'apache2'

service 'apache2' do
	action [:start, :enable]
end

template "#{node[:www_home]}/index.html" do
	source 'index.html.erb'
end