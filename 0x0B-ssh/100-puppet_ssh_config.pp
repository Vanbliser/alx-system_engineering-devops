#  set up your client SSH configuration file so that you can connect to a server without typing a password using the private key ~/.ssh/school

include stdlib

file_line { 'Declare identity file':
 path 	=> '/etc/ssh/ssh_config',
 line	=> ' IdentifyFile ~/.ssh/school',
 replace => true,
}

file_line { 'Turn off passwd auth':
 path	=> '/etc/ssh/ssh_config',
 line	=> ' PasswordAuthentication no',
 replace => true,
} 
