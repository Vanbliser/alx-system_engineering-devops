## Attack is the best defense

This project contains the following tasks:

0. ARP spoofing and sniffing unencrypted traffic: 

In this task, we will be sniffing unencrypted traffic and getting information out of it.
<pre>
Using SendGrid email provider to send an email using telnet, and using the provided user_authenticating_into_server<br>script that performs authentication<br><br>
Your mission is to execute user_authenticating_into_server locally on your machine and, using tcpdump, sniff the<br>network to find my password. Once you find it, paste the password in your answer file 0-sniffing.<br>This script will not work on a Docker container or Mac OS, use your Ubuntu vagrant machine or any other Linux machine.
</pre>


1. Dictionary attack:

In this task, you will be using a dictionary attack to find a password of an ssh account.
<pre>
- Install Docker on your machine Ubuntu<br>
- Pull and run the Docker image sylvainkalache/264-1 with the command<br>
&nbsp;&nbsp;`docker run -p 2222:22 -d -ti sylvainkalache/264-1`<br>
- Find a password dictionary (you might need multiple of them)<br>
- Install and use hydra to try to brute force the account<br>
&nbsp;&nbsp;sylvain via SSH on the Docker container<br>
- Because the Docker container is running locally, hydra should access the<br>
&nbsp;&nbsp;SSH account via IP 127.0.0.1 and port 2222<br>
- Hint: the password is 11 characters long<br>
</pre>
Once you found the password, share it in your answer file 1-dictionary_attack
