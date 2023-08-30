## Project Title: 0x0C. Web server

This project contains the following mandatory tasks:

* 0-transfer_file: a Bash script that transfers a file from our client to a server:
<pre>
Requirements:

1. Accepts 4 parameters
2. The path to the file to be transferred
3. The IP of the server we want to transfer the file to
4. The username scp connects with
5. The path to the SSH private key that scp uses
6. Display Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY if less than<br>&nbsp;&nbsp;&nbsp;3 parameters passed
7. scp must transfer the file to the user home directory ~/
8. Strict host key checking must be disabled when using scp
</pre>

* 1-install_nginx_web_server: A script that install the NGINX web server
<pre>
Requirements:

1. Install nginx on your web-01 server
2. Nginx should be listening on port 80
3. When querying Nginx at its root / with a GET request (requesting a page) using curl,<br>&nbsp;&nbsp;&nbsp;it must return a page that contains the string Hello World!
4. As an answer file, write a Bash script that configures a new Ubuntu machine to respect<br>&nbsp;&nbsp;&nbsp;above requirements (this script will be run on the server itself)
5. You can’t use systemctl for restarting nginx
</pre>

* 2-setup_a_domain_name: a script that sets up your domain name
<pre>
Requirement:

1. provide the domain name only (example: foobar.tech), no subdomain (example: www.foobar.tech)
2. configure your DNS records with an A entry so that your root domain points to your<br>&nbsp;&nbsp;&nbsp;web-01 IP address Warning: the propagation of your records can take time (~1-2 hours)
3. go to your profile and enter your domain in the Project website url field
</pre>

* 3-redirection: a script that configure redirection in your nginx server
<pre>
Requirements:

1. The redirection must be a “301 Moved Permanently”
2. You answer file should be a Bash script containing commands to automatically configure<br>&nbsp;&nbsp;&nbsp;a Ubuntu machine to respect above requirements
3. Using what you did with 1-install_nginx_web_server, write 3-redirection so that it<br>&nbsp;&nbsp;&nbsp;configures a brand new Ubuntu machine to the requirements asked in this task
</pre>

* 4-not_found_page_404: Configure your Nginx server to have a custom 404 page that <br>&nbsp;&nbsp;contains the string Ceci n'est pas une page.
<pre>
Requirements:

1. The page must return an HTTP 404 error code
2. The page must contain the string Ceci n'est pas une page
3. Using what you did with 3-redirection, write 4-not_found_page_404 so that it configures<br>&nbsp;&nbsp;&nbsp;a brand new Ubuntu machine to the requirements asked in this task
</pre>
