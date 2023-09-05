# Puppet manifest to install nginx, configure the sever and sets a custom header


package { 'nginx':
  ensure => installed,
}

exec { 'add_header':
  provider    => shell,
  environment => ["HOSTNAME=${hostname}"],
  command     => 'sudo sed -i "/server_name _/a\\\n\tadd_header X-Served-By \"$HOSTNAME\";" /etc/nginx/sites-available/default',
}

service { 'nginx':
  ensure  => running,
}

Package['nginx'] -> Exec['add_header'] -> Service['nginx']
