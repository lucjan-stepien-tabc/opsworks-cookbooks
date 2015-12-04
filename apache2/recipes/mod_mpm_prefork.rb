# apache_module "mpm_prefork"

apache_module "mpm_event" do
	enable false 
end
apache_module "mpm_worker" do
	enable false 
end
apache_module "mpm_prefork" 