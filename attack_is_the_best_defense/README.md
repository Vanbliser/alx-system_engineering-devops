## Attack is the best defense

This project contains the following tasks:

#### 0. ARP spoofing and sniffing unencrypted traffic: In this task, we will be sniffing<br>&nbsp;&nbsp;&nbsp;&nbsp;unencrypted traffic and getting information out of it.
<pre>
Using SendGrid email provider to send an email using telnet, and using the provided
user_authenticating_into_server script that performs authentication,
your mission is to execute user_authenticating_into_server locally on your machine and,
using tcpdump, sniff the network to find my password. Once you find it,
paste the password in your answer file 0-sniffing.<br>
This script will not work on a Docker container or Mac OS,
use your Ubuntu vagrant machine or any other Linux machine.
</pre>


#### 1. Dictionary attack: In this task, you will be using a dictionary attack to find a<br>&nbsp;&nbsp;&nbsp;&nbsp;password of an ssh account.
<pre>
- Install Docker on your machine Ubuntu
- Pull and run the Docker image sylvainkalache/264-1 with the command
&nbsp;&nbsp;docker run -p 2222:22 -d -ti sylvainkalache/264-1
- Find a password dictionary (you might need multiple of them)
- Install and use hydra to try to brute force the account:
&nbsp;&nbsp;sylvain via SSH on the Docker container
&nbsp;&nbsp;sudo hydra -l sylvain -P rockyou.txt ssh://127.0.0.1:2222
- Because the Docker container is running locally, hydra should access the
&nbsp;&nbsp;SSH account via IP 127.0.0.1 and port 2222
- Hint: the password is 11 characters long
</pre>
Once you found the password, share it in your answer file 1-dictionary_attack
