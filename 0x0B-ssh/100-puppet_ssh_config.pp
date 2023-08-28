#  set up your client SSH configuration file so that you can connect to a server without typing a password using the private key ~/.ssh/school

exec {'Turn off passwd auth':
  path    => '/usr/bin:/bin',
  command => 'echo "PasswordAuthentication no" >> /etc/ssh/ssh_config'
}

exec {'Declare identity file':
  path    => '/usr/bin:/bin',
  command => 'echo "IdentityFile ~/.ssh/school" >> /etc/ssh/ssh_config'
}
