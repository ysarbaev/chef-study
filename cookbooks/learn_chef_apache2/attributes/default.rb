
case node[:platform_family]
  when "windows"
    default[:www_home] = "#ENV[HOME]"
  when "centos", "debian"
    default[:www_home] = "/var/www/html"