#
# Cookbook Name:: graphite
# Attributes:: default
#

include_attribute 'graphite'

default['graphite']['password'] = 'password'
default['graphite']['timezone'] = 'Asia/Tokyo'
default['graphite']['apache']['basic_auth']['enabled'] = true
default['graphite']['apache']['basic_auth']['file_path'] = "#{node['graphite']['doc_root']}/htpasswd"
default['graphite']['apache']['basic_auth']['user'] = "admin"
default['graphite']['apache']['basic_auth']['pass'] = "password"
