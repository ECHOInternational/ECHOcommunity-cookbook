remote_file download_dest do
  path "/usr/share/fonts/Kinnari.ttf"
  source "http://somewhere a ttf file is stored."
  mode '0644'
  action :create_if_missing
end

# Be sure to update font cache.