#install flask from pip3.

exec { 'apt-get update':
  command => '/usr/bin/apt-get update'
}

package { 'python3-pip':
    ensure  => 'installed',
    require => Exec['apt-get update']
}

exec { 'install-flask==2.1.0':
    command => '/usr/bin/pip3 install Flask=2.1.0',
    onlyif  => '/usr/bin/pip3'
}

Exec['install-flask==2.1.0'] -> Package['python3-pip']
