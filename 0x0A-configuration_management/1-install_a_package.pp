#install flask from pip3.

exec { 'install python3':
    commnad => '/usr/bin/apt-get install -y python3',
    onlyif  => '/usr/bin/apt-get update'
}

package { 'python3-pip':
    ensure  => 'installed',
    require => Exec['install python3']
}

exec { 'install-flask==2.1.0':
    command => '/usr/bin/pip3 install Flask==2.1.0',
    onlyif  => '/usr/bin/which pip3 '
}

Exec['install-flask==2.1.0'] -> Package['python3-pip']
