#
# Cookbook Name:: oracle
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

directory "Z:\\oracle" do 
  action :create
  owner "Administrator"
end

windows_zipfile "Z:\\oracle" do
  source "https://s3.amazonaws.com/ab-atg/OracleXE112_Win64.zip"
  action :unzip
end