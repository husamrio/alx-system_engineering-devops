# default
$default_site_loc = '/etc/nginx/sites-available/default'
$default_site = 'https://raw.githubusercontent.com/osala-eng/alx-system_engineering-devops/master/0x0C-web_server/default-site'

# Type command apt-get update
# Update the packages
exec { 'apt-update':
  command => '/usr/bin/apt-get update'
}

# Install nginx
package { 'nginx':
  ensure  => installed,
  require => Exec['apt-update'],
}

# Make a new index.html
file { 'Create index.html':
  require => Package['nginx'],
  path    => '/var/www/html/index.html',
  content => 'Hello World!\n'
}

# Make a new error page
file { 'Create 404.html':
  require => Package['nginx'],
  path    => '/var/www/html/404.html',
  content => 'Ceci n\'est pas une page\n'
}

# Replace default site config
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  require => Package['nginx']
}-> exec { 'Replace config':
  command => "/usr/bin/curl ${default_site} > ${default_site_loc}"
}

# Begin nginx service
service { 'nginx':
  ensure  => running,
  require => Exec['Replace config'],
}
