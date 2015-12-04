# apache_module "mpm_worker"

apache_module "mpm_event" do
	enable false 
end
apache_module "mpm_prefork" do
	enable false 
end
apache_module "mpm_worker" 