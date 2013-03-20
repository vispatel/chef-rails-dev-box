#
# Cookbook Name:: postinstall
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group "rbenv" do
  action :create
  members "vagrant"
  gid 1100
  append true
end

directory "/usr/local/rbenv" do
  owner "root"
  group "rbenv"
  mode "0755"
  recursive true
  action :create
end

git "/vagrant/rails" do
   repository "git://github.com/rails/rails.git"
   reference "master"
   action :checkout
   user  "vagrant"
   group "vagrant"
end
