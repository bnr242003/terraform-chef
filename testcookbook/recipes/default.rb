#
# Cookbook:: testcookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

directory 'C:/opscode/testarea1' do
  action :create
end

#file "C:/opscode/testarea/test.txt" do
 # content 'This file was created by Chef!'
#end
