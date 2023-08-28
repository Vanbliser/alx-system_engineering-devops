#  set up your client SSH configuration file so that you can connect to a server without typing a password using the private key ~/.ssh/school

file_line { 'Configure identity file':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^#*\s*IdentityFile',
}

file_line { 'Disable password authentication':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  match   => '^#*\s*PasswordAuthentication',
}
