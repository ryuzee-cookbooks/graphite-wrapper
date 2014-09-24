#
# Cookbook Name:: graphite-wrapper
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apt'

package 'python-dev' do
  action :install
end

package 'python-pip' do
  action :install
end

include_recipe 'graphite::default'

## bugfix
execute 'mv /etc/apache2/sites-available/graphite /etc/apache2/sites-available/graphite.conf' do
  action :run
  only_if { File.exist?('/etc/apache2/sites-available/graphite') }
end

execute 'ln -s /etc/apache2/sites-available/graphite.conf /etc/apache2/sites-enabled/graphite.conf' do
  action :run
  only_if { File.exist?('/etc/apache2/sites-available/graphite.conf') }
  notifies :restart, 'service[apache2]'
end

service 'apache2' do
  action :nothing
end

# vim: filetype=ruby.chef
