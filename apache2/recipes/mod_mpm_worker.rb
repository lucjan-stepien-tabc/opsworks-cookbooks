# apache_module "mpm_worker"

if platform_family?('debian')
  if node[:apache][:version] == '2.2'
    package "apache2-mpm-worker"
  else
    apache_module "mpm_event" do
      enable false 
    end
    apache_module "mpm_prefork" do
      enable false 
    end
    apache_module "mpm_worker" 
  end
elsif platform_family?('rhel')
  log 'Place holder for rhel'
end
