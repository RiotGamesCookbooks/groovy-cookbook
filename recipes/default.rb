#
# Cookbook Name:: groovy
# Recipe:: default
#
# Copyright (C) 2012 Kyle Allan (<kallan@riotgames.com>)
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "java"
include_recipe "ark"

ark "groovy" do
  url node[:groovy][:url]
  checksum node[:groovy][:checksum]
  home_dir node[:groovy][:home]
  version node[:groovy][:version]
  append_env_path true
  action :install
end

file "/etc/profile.d/groovy_home.sh" do
  content <<-EOS
    export GROOVY_HOME=#{node[:groovy][:home]}
  EOS
  mode 0755
end