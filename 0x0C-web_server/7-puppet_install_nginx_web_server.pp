# Puppet manifest to install nginx and configure the server with custom home page and redirect on path /redirect_me

package { 'nginx':
  ensure => installed,
}

file_line { 'redirect_me':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me/?$ https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file { 'home_page':
  path    => '/var/www/html/index.html',
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

Package['nginx'] -> File_line['redirect_me'] -> File['home_page'] -> Service['nginx']
