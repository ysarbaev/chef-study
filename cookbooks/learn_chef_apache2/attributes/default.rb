
case node[:platform_family]
  when "windows"
    default[:apache][:www] = "#ENV[HOME]"
  when "centos", "debian"
    default[:apache][:www] = "/var/www/html"
end
