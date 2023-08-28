## Project Title: 0x0B. SSH

This project contains the following mandatory tasks:

* 0-use_a_private_key: a Bash script that uses ssh to connect to your server using the private key ~/.ssh/school with the user ubuntu.
<pre>
Requirements:

Only use ssh single-character flags
You cannot use -l
You do not need to handle the case of a private key protected by a passphrase
</pre>

* 1-create_ssh_key_pair: a Bash script that creates an RSA key pair.
<pre>
Requirements:

Name of the created private key must be school
Number of bits in the created key to be created 4096
The created key must be protected by the passphrase betty
</pre>

* 2-ssh_config:
<pre>
Requirements:

Your SSH client configuration must be configured to use the private key ~/.ssh/school
Your SSH client configuration must be configured to refuse to authenticate using a password
</pre>


This project contain the following advance task:

* 100-puppet_ssh_config.pp: using Puppet to make changes to our configuration file. Just as in the previous configuration file task, we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password.
<pre>
Requirements:

Your SSH client configuration must be configured to use the private key ~/.ssh/school
Your SSH client configuration must be configured to refuse to authenticate using a password
</pre>
