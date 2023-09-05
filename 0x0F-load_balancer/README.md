## 0x0F. Load balancer


#### Requirements
- Allowed editors: vi, vim, emacs;
- All your files will be interpreted on Ubuntu 16.04 LTS;
- All your files should end with a new line;
- A README.md file, at the root of the folder of the project, is mandatory;
- All your Bash script files must be executable;
- Your Bash script must pass Shellcheck (version 0.3.7) without any error;
- The first line of all your Bash scripts should be exactly #!/usr/bin/env bash;
- The second line of all your Bash scripts should be a comment explaining what is the script doing


### This project contains the following mandatory taskS:

#### 0. Double the number of webservers
configure web-02 to be identical to web-01

<i>Requirements:</i>
- Configure Nginx so that its HTTP response contains a custom header (on web-01 and web-02);
- The name of the custom HTTP header must be X-Served-By;
- The value of the custom HTTP header must be the hostname of the server Nginx is running on;
- Write 0-custom_http_response_header so that it configures a brand new Ubuntu machine to the requirements asked in this task;
- Ignore SC2154 for shellcheck;


#### 1. Install your load balancer
Install and configure HAproxy on your lb-01 server.

<i>Requirements:</i>
- Configure HAproxy so that it send traffic to web-01 and web-02;
- Distribute requests using a roundrobin algorithm;
- Make sure that HAproxy can be managed via an init script;
- Make sure that your servers are configured with the right hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02.;
- For your answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements;
