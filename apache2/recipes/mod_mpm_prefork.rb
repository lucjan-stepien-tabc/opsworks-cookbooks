# apache_module "mpm_prefork"

if platform_family?('debian')
  if node[:apache][:version] == '2.2'
  	package "apache2-mpm-prefork"
  else
    apache_module "mpm_event" do
      enable false 
    end
    apache_module "mpm_worker" do
      enable false 
    end
    apache_module "mpm_prefork" 
  end
elsif platform_family?('rhel')
  log 'Place holder for rhel'
end
