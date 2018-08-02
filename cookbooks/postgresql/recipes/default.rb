#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

package 'postgresql-server' do
	notifies :run,  'execute[postgresql-init]'
end

execute 'postgresql-ini' do
	command 'postgresql-setp initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
