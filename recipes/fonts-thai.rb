#
# Cookbook Name:: ECHOcommunity-cookbook
# Recipe:: fonts-thai
#
# Copyright (C) 2016 Nate Flood (ECHO Inc.)
#

directory '/usr/share/fonts' do
  mode '0755'
  action :create
end

remote_file "/usr/share/fonts/Kinnari.ttf" do
  source "https://github.com/ECHOInternational/ECHOcommunity-cookbook/raw/master/fonts/thai/Kinnari.ttf"
  mode '0644'
  action :create_if_missing
end

execute 'font_cache_refresh' do
  command '/usr/bin/fc-cache -fv'
  only_if do ::File.exists?('/usr/bin/fc-cache') end
end