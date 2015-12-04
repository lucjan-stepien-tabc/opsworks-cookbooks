# apache wsgi mode

if platform_family?('debian')
  package 'libapache2-mod-wsgi'
elsif platform_family?('rhel')
  package 'your-package-for-rhel'
end

apache_module 'wsgi'