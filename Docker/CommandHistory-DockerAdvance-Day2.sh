httpd                   latest    627c383437d5   12 days ago      117MB
[root@ip-172-31-14-233 MarioGameOnDocker]# docker push jinny1/gfg40webserver
Using default tag: latest
The push refers to repository [docker.io/jinny1/gfg40webserver]
c8c047a31071: Pushed 
5f70bf18a086: Mounted from library/httpd 
f3ad9ae24832: Pushed 
6beb63c27303: Mounted from library/amazonlinux 
latest: digest: sha256:a11293b64ff7e2ce7763a3b08d5c17292d24640849680832f800c013016d38b7 size: 1155
[root@ip-172-31-14-233 MarioGameOnDocker]# docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                                   NAMES
d83b1c4a1ac7   mariogame:v1   "/docker-entrypoint.…"   14 minutes ago   Up 14 minutes   0.0.0.0:80->80/tcp, :::80->80/tcp       gameserver
4ac2f903d476   nginx          "/docker-entrypoint.…"   19 minutes ago   Up 19 minutes   0.0.0.0:8080->80/tcp, :::8080->80/tcp   infallible_chaplygin
ad96cd631cf9   amazonlinux    "/bin/bash"              28 minutes ago   Up 23 minutes                                           os1
d834d8289034   httpd          "httpd-foreground"       31 minutes ago   Up 31 minutes   0.0.0.0:82->80/tcp, :::82->80/tcp       myhttpdserver1
[root@ip-172-31-14-233 MarioGameOnDocker]# docker run -it --name os2 amazonlinux
bash-5.2# ping
bash: ping: command not found
bash-5.2# yum whatprovides ping
Amazon Linux 2023 repository                                                                                                                                16 MB/s |  51 MB     00:03    
Last metadata expiration check: 0:00:13 ago on Sun Dec 21 06:43:05 2025.
iputils-20210202-2.amzn2023.0.3.x86_64 : Network monitoring tools including ping
Repo        : amazonlinux
Matched from:
Provide    : /bin/ping
Filename    : /usr/sbin/ping
Filename    : /usr/bin/ping

iputils-20210202-2.amzn2023.0.4.x86_64 : Network monitoring tools including ping
Repo        : amazonlinux
Matched from:
Provide    : /bin/ping
Filename    : /usr/sbin/ping
Filename    : /usr/bin/ping

bash-5.2# yum install iputils
Last metadata expiration check: 0:00:29 ago on Sun Dec 21 06:43:05 2025.
Dependencies resolved.
===========================================================================================================================================================================================
 Package                                 Architecture                           Version                                                  Repository                                   Size
===========================================================================================================================================================================================
Installing:
 iputils                                 x86_64                                 20210202-2.amzn2023.0.4                                  amazonlinux                                 169 k

Transaction Summary
===========================================================================================================================================================================================
Install  1 Package

Total download size: 169 k
Installed size: 527 k
Is this ok [y/N]: y
Downloading Packages:
iputils-20210202-2.amzn2023.0.4.x86_64.rpm                                                                                                                 7.8 MB/s | 169 kB     00:00    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                      137 kB/s | 169 kB     00:01     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                   1/1 
  Installing       : iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/1 
  Running scriptlet: iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/1 
  Verifying        : iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/1 

Installed:
  iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                                                   

Complete!
bash-5.2# ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=113 time=1.02 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=113 time=1.02 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=113 time=1.01 ms
^C
--- 8.8.8.8 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2002ms
rtt min/avg/max/mdev = 1.005/1.014/1.021/0.006 ms
bash-5.2# hostname
bash: hostname: command not found
bash-5.2# yum whatprovides hostname
Last metadata expiration check: 0:00:55 ago on Sun Dec 21 06:43:05 2025.
hostname-3.23-4.amzn2023.0.3.x86_64 : Utility to set/show the host name or domain name
Repo        : amazonlinux
Matched from:
Provide    : hostname = 3.23-4.amzn2023.0.3

bash-5.2# yum install hostname
Last metadata expiration check: 0:01:02 ago on Sun Dec 21 06:43:05 2025.
Dependencies resolved.
===========================================================================================================================================================================================
 Package                                   Architecture                            Version                                              Repository                                    Size
===========================================================================================================================================================================================
Installing:
 hostname                                  x86_64                                  3.23-4.amzn2023.0.3                                  amazonlinux                                   28 k

Transaction Summary
===========================================================================================================================================================================================
Install  1 Package

Total download size: 28 k
Installed size: 46 k
Is this ok [y/N]: y
Downloading Packages:
hostname-3.23-4.amzn2023.0.3.x86_64.rpm                                                                                                                    1.4 MB/s |  28 kB     00:00    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                       23 kB/s |  28 kB     00:01     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                   1/1 
  Installing       : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               1/1 
  Running scriptlet: hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               1/1 
  Verifying        : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               1/1 

Installed:
  hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                                                      

Complete!
bash-5.2# hostname
637ce5b77633
bash-5.2# hostname -I
172.17.0.6 
bash-5.2# [root@ip-172-31-14-233 MarioGameOnDocker]# 
[root@ip-172-31-14-233 MarioGameOnDocker]# docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                                   NAMES
637ce5b77633   amazonlinux    "/bin/bash"              2 minutes ago    Up 2 minutes                                            os2
d83b1c4a1ac7   mariogame:v1   "/docker-entrypoint.…"   17 minutes ago   Up 17 minutes   0.0.0.0:80->80/tcp, :::80->80/tcp       gameserver
4ac2f903d476   nginx          "/docker-entrypoint.…"   22 minutes ago   Up 22 minutes   0.0.0.0:8080->80/tcp, :::8080->80/tcp   infallible_chaplygin
ad96cd631cf9   amazonlinux    "/bin/bash"              31 minutes ago   Up 26 minutes                                           os1
d834d8289034   httpd          "httpd-foreground"       34 minutes ago   Up 34 minutes   0.0.0.0:82->80/tcp, :::82->80/tcp       myhttpdserver1
[root@ip-172-31-14-233 MarioGameOnDocker]# docker exec -it os1 bash
bash-5.2# yum install hostname iputils -y
Amazon Linux 2023 repository                                                                                                                                30 MB/s |  51 MB     00:01    
Last metadata expiration check: 0:00:11 ago on Sun Dec 21 06:45:44 2025.
Dependencies resolved.
===========================================================================================================================================================================================
 Package                                  Architecture                           Version                                                 Repository                                   Size
===========================================================================================================================================================================================
Installing:
 hostname                                 x86_64                                 3.23-4.amzn2023.0.3                                     amazonlinux                                  28 k
 iputils                                  x86_64                                 20210202-2.amzn2023.0.4                                 amazonlinux                                 169 k

Transaction Summary
===========================================================================================================================================================================================
Install  2 Packages

Total download size: 197 k
Installed size: 573 k
Downloading Packages:
(1/2): hostname-3.23-4.amzn2023.0.3.x86_64.rpm                                                                                                             1.3 MB/s |  28 kB     00:00    
(2/2): iputils-20210202-2.amzn2023.0.4.x86_64.rpm                                                                                                          5.7 MB/s | 169 kB     00:00    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                      159 kB/s | 197 kB     00:01     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                   1/1 
  Installing       : iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/2 
  Running scriptlet: iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/2 
  Installing       : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               2/2 
  Running scriptlet: hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               2/2 
  Verifying        : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               1/2 
  Verifying        : iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            2/2 

Installed:
  hostname-3.23-4.amzn2023.0.3.x86_64                                                        iputils-20210202-2.amzn2023.0.4.x86_64                                                       

Complete!
bash-5.2# hostname -I
172.17.0.2 
bash-5.2# ping 172.17.0.6
PING 172.17.0.6 (172.17.0.6) 56(84) bytes of data.
64 bytes from 172.17.0.6: icmp_seq=1 ttl=127 time=0.077 ms
64 bytes from 172.17.0.6: icmp_seq=2 ttl=127 time=0.057 ms
64 bytes from 172.17.0.6: icmp_seq=3 ttl=127 time=0.062 ms
64 bytes from 172.17.0.6: icmp_seq=4 ttl=127 time=0.060 ms
64 bytes from 172.17.0.6: icmp_seq=5 ttl=127 time=0.056 ms
64 bytes from 172.17.0.6: icmp_seq=6 ttl=127 time=0.060 ms
64 bytes from 172.17.0.6: icmp_seq=7 ttl=127 time=0.057 ms
64 bytes from 172.17.0.6: icmp_seq=8 ttl=127 time=0.059 ms
^C
--- 172.17.0.6 ping statistics ---
8 packets transmitted, 8 received, 0% packet loss, time 7303ms
rtt min/avg/max/mdev = 0.056/0.061/0.077/0.006 ms
bash-5.2# exit
exit
[root@ip-172-31-14-233 MarioGameOnDocker]# 
[root@ip-172-31-14-233 MarioGameOnDocker]# 
[root@ip-172-31-14-233 MarioGameOnDocker]# docker network ls
NETWORK ID     NAME      DRIVER    SCOPE
1593274d61a0   bridge    bridge    local
9b4044837829   host      host      local
40a3ed78f775   none      null      local
[root@ip-172-31-14-233 MarioGameOnDocker]# docker network create --help

Usage:  docker network create [OPTIONS] NETWORK

Create a network

Options:
      --attachable           Enable manual container attachment
      --aux-address map      Auxiliary IPv4 or IPv6 addresses used by Network driver (default map[])
      --config-from string   The network from which to copy the configuration
      --config-only          Create a configuration only network
  -d, --driver string        Driver to manage the Network (default "bridge")
      --gateway strings      IPv4 or IPv6 Gateway for the master subnet
      --ingress              Create swarm routing-mesh network
      --internal             Restrict external access to the network
      --ip-range strings     Allocate container ip from a sub-range
      --ipam-driver string   IP Address Management Driver (default "default")
      --ipam-opt map         Set IPAM driver specific options (default map[])
      --ipv6                 Enable IPv6 networking
      --label list           Set metadata on a network
  -o, --opt map              Set driver specific options (default map[])
      --scope string         Control the network's scope
      --subnet strings       Subnet in CIDR format that represents a network segment
[root@ip-172-31-14-233 MarioGameOnDocker]# docker network create -d bridge --subnet 192.168.1.0/24 gfgnet
9c851caf66fa5111822e5c2a6fb4d695948487e9e11f56ce81eff88dc4ec2583
[root@ip-172-31-14-233 MarioGameOnDocker]# docker network ls
NETWORK ID     NAME      DRIVER    SCOPE
1593274d61a0   bridge    bridge    local
9c851caf66fa   gfgnet    bridge    local
9b4044837829   host      host      local
40a3ed78f775   none      null      local
[root@ip-172-31-14-233 MarioGameOnDocker]# docker run -dit --name c1 --network gfgnet amazonlinux
75d04dee4f8d73a9714884c8caee96032b8b3caafefdd93fbf53910caf071c4c
[root@ip-172-31-14-233 MarioGameOnDocker]# docker run -dit --name c2 --network gfgnet amazonlinux
fa4e08e7a5d5879cdf553a11cc964ac270232d6d489be5cbb525bdb6dfa2fcc3
[root@ip-172-31-14-233 MarioGameOnDocker]# docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                                   NAMES
fa4e08e7a5d5   amazonlinux    "/bin/bash"              5 seconds ago    Up 4 seconds                                            c2
75d04dee4f8d   amazonlinux    "/bin/bash"              14 seconds ago   Up 13 seconds                                           c1
637ce5b77633   amazonlinux    "/bin/bash"              11 minutes ago   Up 11 minutes                                           os2
d83b1c4a1ac7   mariogame:v1   "/docker-entrypoint.…"   26 minutes ago   Up 26 minutes   0.0.0.0:80->80/tcp, :::80->80/tcp       gameserver
4ac2f903d476   nginx          "/docker-entrypoint.…"   31 minutes ago   Up 31 minutes   0.0.0.0:8080->80/tcp, :::8080->80/tcp   infallible_chaplygin
ad96cd631cf9   amazonlinux    "/bin/bash"              40 minutes ago   Up 35 minutes                                           os1
d834d8289034   httpd          "httpd-foreground"       43 minutes ago   Up 43 minutes   0.0.0.0:82->80/tcp, :::82->80/tcp       myhttpdserver1
[root@ip-172-31-14-233 MarioGameOnDocker]# docker exec -it c1 bash
bash-5.2# yum install iputils hostname -y
Amazon Linux 2023 repository                                                                                                                                32 MB/s |  51 MB     00:01    
Last metadata expiration check: 0:00:11 ago on Sun Dec 21 06:54:37 2025.
Dependencies resolved.
===========================================================================================================================================================================================
 Package                                  Architecture                           Version                                                 Repository                                   Size
===========================================================================================================================================================================================
Installing:
 hostname                                 x86_64                                 3.23-4.amzn2023.0.3                                     amazonlinux                                  28 k
 iputils                                  x86_64                                 20210202-2.amzn2023.0.4                                 amazonlinux                                 169 k

Transaction Summary
===========================================================================================================================================================================================
Install  2 Packages

Total download size: 197 k
Installed size: 573 k
Downloading Packages:
(1/2): hostname-3.23-4.amzn2023.0.3.x86_64.rpm                                                                                                             1.3 MB/s |  28 kB     00:00    
(2/2): iputils-20210202-2.amzn2023.0.4.x86_64.rpm                                                                                                          6.2 MB/s | 169 kB     00:00    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                      156 kB/s | 197 kB     00:01     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                   1/1 
  Installing       : iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/2 
  Running scriptlet: iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/2 
  Installing       : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               2/2 
  Running scriptlet: hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               2/2 
  Verifying        : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               1/2 
  Verifying        : iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            2/2 

Installed:
  hostname-3.23-4.amzn2023.0.3.x86_64                                                        iputils-20210202-2.amzn2023.0.4.x86_64                                                       

Complete!
bash-5.2# hostname -I
192.168.1.2 
bash-5.2# ping 172.17.0.6
PING 172.17.0.6 (172.17.0.6) 56(84) bytes of data.
^C
--- 172.17.0.6 ping statistics ---
9 packets transmitted, 0 received, 100% packet loss, time 8349ms

bash-5.2# exit
exit
[root@ip-172-31-14-233 MarioGameOnDocker]# docker exec -it c2 bash
bash-5.2# yum install iputils hostname -y
Amazon Linux 2023 repository                                                                                                                                32 MB/s |  51 MB     00:01    
Last metadata expiration check: 0:00:11 ago on Sun Dec 21 06:56:29 2025.
Dependencies resolved.
===========================================================================================================================================================================================
 Package                                  Architecture                           Version                                                 Repository                                   Size
===========================================================================================================================================================================================
Installing:
 hostname                                 x86_64                                 3.23-4.amzn2023.0.3                                     amazonlinux                                  28 k
 iputils                                  x86_64                                 20210202-2.amzn2023.0.4                                 amazonlinux                                 169 k

Transaction Summary
===========================================================================================================================================================================================
Install  2 Packages

Total download size: 197 k
Installed size: 573 k
Downloading Packages:
(1/2): hostname-3.23-4.amzn2023.0.3.x86_64.rpm                                                                                                             1.3 MB/s |  28 kB     00:00    
(2/2): iputils-20210202-2.amzn2023.0.4.x86_64.rpm                                                                                                          6.1 MB/s | 169 kB     00:00    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                      154 kB/s | 197 kB     00:01     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                   1/1 
  Installing       : iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/2 
  Running scriptlet: iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            1/2 
  Installing       : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               2/2 
  Running scriptlet: hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               2/2 
  Verifying        : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                               1/2 
  Verifying        : iputils-20210202-2.amzn2023.0.4.x86_64                                                                                                                            2/2 

Installed:
  hostname-3.23-4.amzn2023.0.3.x86_64                                                        iputils-20210202-2.amzn2023.0.4.x86_64                                                       

Complete!
bash-5.2# hostname -I
192.168.1.3 
bash-5.2# ping 192.168.1.2
PING 192.168.1.2 (192.168.1.2) 56(84) bytes of data.
64 bytes from 192.168.1.2: icmp_seq=1 ttl=127 time=0.076 ms
64 bytes from 192.168.1.2: icmp_seq=2 ttl=127 time=0.064 ms
64 bytes from 192.168.1.2: icmp_seq=3 ttl=127 time=0.060 ms
64 bytes from 192.168.1.2: icmp_seq=4 ttl=127 time=0.063 ms
64 bytes from 192.168.1.2: icmp_seq=5 ttl=127 time=0.058 ms
^C
--- 192.168.1.2 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4151ms
rtt min/avg/max/mdev = 0.058/0.064/0.076/0.006 ms
bash-5.2# exit
exit
[root@ip-172-31-14-233 MarioGameOnDocker]# ls
Dockerfile  README.md  mario-game  mario-game-webapp.png
[root@ip-172-31-14-233 MarioGameOnDocker]# ping 192.168.1.3
PING 192.168.1.3 (192.168.1.3) 56(84) bytes of data.
64 bytes from 192.168.1.3: icmp_seq=1 ttl=127 time=0.058 ms
64 bytes from 192.168.1.3: icmp_seq=2 ttl=127 time=0.046 ms
64 bytes from 192.168.1.3: icmp_seq=3 ttl=127 time=0.044 ms
^C
--- 192.168.1.3 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2051ms
rtt min/avg/max/mdev = 0.044/0.049/0.058/0.006 ms
[root@ip-172-31-14-233 MarioGameOnDocker]# ping 172.17.0.6
PING 172.17.0.6 (172.17.0.6) 56(84) bytes of data.
64 bytes from 172.17.0.6: icmp_seq=1 ttl=127 time=0.068 ms
64 bytes from 172.17.0.6: icmp_seq=2 ttl=127 time=0.042 ms
64 bytes from 172.17.0.6: icmp_seq=3 ttl=127 time=0.043 ms
^C
--- 172.17.0.6 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2118ms
rtt min/avg/max/mdev = 0.042/0.051/0.068/0.012 ms
[root@ip-172-31-14-233 MarioGameOnDocker]# ifconfig
br-9c851caf66fa: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.1  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::42:afff:fec0:8378  prefixlen 64  scopeid 0x20<link>
        ether 02:42:af:c0:83:78  txqueuelen 0  (Ethernet)
        RX packets 7818  bytes 525687 (513.3 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8317  bytes 53909099 (51.4 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

docker0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
        inet6 fe80::42:12ff:fee6:bfe  prefixlen 64  scopeid 0x20<link>
        ether 02:42:12:e6:0b:fe  txqueuelen 0  (Ethernet)
        RX packets 41373  bytes 122714474 (117.0 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 42000  bytes 190884901 (182.0 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

ens5: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
        inet 172.31.14.233  netmask 255.255.240.0  broadcast 172.31.15.255
        inet6 fe80::85b:94ff:fe07:1eb7  prefixlen 64  scopeid 0x20<link>
        ether 0a:5b:94:07:1e:b7  txqueuelen 1000  (Ethernet)
        RX packets 440146  bytes 603290955 (575.3 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 221915  bytes 268452804 (256.0 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 12  bytes 1020 (1020.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 12  bytes 1020 (1020.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth152a20c: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::7034:4ff:fe09:3855  prefixlen 64  scopeid 0x20<link>
        ether 72:34:04:09:38:55  txqueuelen 0  (Ethernet)
        RX packets 1767  bytes 125191 (122.2 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2755  bytes 53553409 (51.0 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth183b4b3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::e8bc:ccff:fe00:ebd7  prefixlen 64  scopeid 0x20<link>
        ether ea:bc:cc:00:eb:d7  txqueuelen 0  (Ethernet)
        RX packets 2466  bytes 185640 (181.2 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 4324  bytes 53693806 (51.2 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth2e3b20d: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::f016:edff:fe8b:db6f  prefixlen 64  scopeid 0x20<link>
        ether f2:16:ed:8b:db:6f  txqueuelen 0  (Ethernet)
        RX packets 1765  bytes 125239 (122.3 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2925  bytes 53556786 (51.0 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth4dbd6eb: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::344a:cbff:fee3:3218  prefixlen 64  scopeid 0x20<link>
        ether 36:4a:cb:e3:32:18  txqueuelen 0  (Ethernet)
        RX packets 7818  bytes 525687 (513.3 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8317  bytes 53909099 (51.4 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth56b3492: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::34c9:eff:fea3:abc3  prefixlen 64  scopeid 0x20<link>
        ether 36:c9:0e:a3:ab:c3  txqueuelen 0  (Ethernet)
        RX packets 28330  bytes 122374629 (116.7 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 24817  bytes 1848912 (1.7 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

vethd44a1f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::3c9a:4fff:fed1:f29b  prefixlen 64  scopeid 0x20<link>
        ether 3e:9a:4f:d1:f2:9b  txqueuelen 0  (Ethernet)
        RX packets 25  bytes 2944 (2.8 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 56  bytes 5123 (5.0 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

vethef9bd7b: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::6c69:ceff:fe81:e869  prefixlen 64  scopeid 0x20<link>
        ether 6e:69:ce:81:e8:69  txqueuelen 0  (Ethernet)
        RX packets 23  bytes 2737 (2.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 56  bytes 5122 (5.0 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

[root@ip-172-31-14-233 MarioGameOnDocker]# docker network ls
NETWORK ID     NAME      DRIVER    SCOPE
1593274d61a0   bridge    bridge    local
9c851caf66fa   gfgnet    bridge    local
9b4044837829   host      host      local
40a3ed78f775   none      null      local
[root@ip-172-31-14-233 MarioGameOnDocker]# docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                                   NAMES
fa4e08e7a5d5   amazonlinux    "/bin/bash"              7 minutes ago    Up 7 minutes                                            c2
75d04dee4f8d   amazonlinux    "/bin/bash"              7 minutes ago    Up 7 minutes                                            c1
637ce5b77633   amazonlinux    "/bin/bash"              19 minutes ago   Up 19 minutes                                           os2
d83b1c4a1ac7   mariogame:v1   "/docker-entrypoint.…"   34 minutes ago   Up 34 minutes   0.0.0.0:80->80/tcp, :::80->80/tcp       gameserver
4ac2f903d476   nginx          "/docker-entrypoint.…"   38 minutes ago   Up 38 minutes   0.0.0.0:8080->80/tcp, :::8080->80/tcp   infallible_chaplygin
ad96cd631cf9   amazonlinux    "/bin/bash"              47 minutes ago   Up 42 minutes                                           os1
d834d8289034   httpd          "httpd-foreground"       50 minutes ago   Up 50 minutes   0.0.0.0:82->80/tcp, :::82->80/tcp       myhttpdserver1
[root@ip-172-31-14-233 MarioGameOnDocker]# docker run -^C --name newos --network host nginx
[root@ip-172-31-14-233 MarioGameOnDocker]# docker stop gameserver
gameserver
[root@ip-172-31-14-233 MarioGameOnDocker]# docker ps
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS          PORTS                                   NAMES
fa4e08e7a5d5   amazonlinux   "/bin/bash"              8 minutes ago    Up 8 minutes                                            c2
75d04dee4f8d   amazonlinux   "/bin/bash"              8 minutes ago    Up 8 minutes                                            c1
637ce5b77633   amazonlinux   "/bin/bash"              19 minutes ago   Up 19 minutes                                           os2
4ac2f903d476   nginx         "/docker-entrypoint.…"   39 minutes ago   Up 39 minutes   0.0.0.0:8080->80/tcp, :::8080->80/tcp   infallible_chaplygin
ad96cd631cf9   amazonlinux   "/bin/bash"              48 minutes ago   Up 43 minutes                                           os1
d834d8289034   httpd         "httpd-foreground"       51 minutes ago   Up 51 minutes   0.0.0.0:82->80/tcp, :::82->80/tcp       myhttpdserver1
[root@ip-172-31-14-233 MarioGameOnDocker]# 
[root@ip-172-31-14-233 MarioGameOnDocker]# 
[root@ip-172-31-14-233 MarioGameOnDocker]# 
[root@ip-172-31-14-233 MarioGameOnDocker]# docker run -it --name newos --network host  amazonlinux
bash-5.2# yum install httpd hostname -y
Amazon Linux 2023 repository                                                                                                                                31 MB/s |  51 MB     00:01    
Last metadata expiration check: 0:00:11 ago on Sun Dec 21 07:03:06 2025.
Dependencies resolved.
===========================================================================================================================================================================================
 Package                                          Architecture                        Version                                               Repository                                Size
===========================================================================================================================================================================================
Installing:
 hostname                                         x86_64                              3.23-4.amzn2023.0.3                                   amazonlinux                               28 k
 httpd                                            x86_64                              2.4.65-1.amzn2023.0.2                                 amazonlinux                               47 k
Installing dependencies:
 apr                                              x86_64                              1.7.5-1.amzn2023.0.4                                  amazonlinux                              129 k
 apr-util                                         x86_64                              1.6.3-1.amzn2023.0.2                                  amazonlinux                               97 k
 apr-util-lmdb                                    x86_64                              1.6.3-1.amzn2023.0.2                                  amazonlinux                               13 k
 cracklib                                         x86_64                              2.9.6-27.amzn2023.0.2                                 amazonlinux                               82 k
 dbus                                             x86_64                              1:1.12.28-1.amzn2023.0.1                              amazonlinux                              8.5 k
 dbus-broker                                      x86_64                              32-1.amzn2023.0.2                                     amazonlinux                              174 k
 dbus-common                                      noarch                              1:1.12.28-1.amzn2023.0.1                              amazonlinux                               15 k
 device-mapper                                    x86_64                              1.02.185-1.amzn2023.0.5                               amazonlinux                              137 k
 device-mapper-libs                               x86_64                              1.02.185-1.amzn2023.0.5                               amazonlinux                              177 k
 generic-logos-httpd                              noarch                              18.0.0-12.amzn2023.0.3                                amazonlinux                               19 k
 gzip                                             x86_64                              1.12-1.amzn2023.0.1                                   amazonlinux                              160 k
 httpd-core                                       x86_64                              2.4.65-1.amzn2023.0.2                                 amazonlinux                              1.4 M
 httpd-filesystem                                 noarch                              2.4.65-1.amzn2023.0.2                                 amazonlinux                               13 k
 httpd-tools                                      x86_64                              2.4.65-1.amzn2023.0.2                                 amazonlinux                               81 k
 kmod-libs                                        x86_64                              29-2.amzn2023.0.5                                     amazonlinux                               62 k
 libargon2                                        x86_64                              20171227-9.amzn2023.0.2                               amazonlinux                               29 k
 libbrotli                                        x86_64                              1.0.9-4.amzn2023.0.2                                  amazonlinux                              315 k
 libdb                                            x86_64                              5.3.28-49.amzn2023.0.2                                amazonlinux                              756 k
 libeconf                                         x86_64                              0.4.0-1.amzn2023.0.3                                  amazonlinux                               28 k
 libfdisk                                         x86_64                              2.37.4-1.amzn2023.0.4                                 amazonlinux                              153 k
 libpwquality                                     x86_64                              1.4.4-6.amzn2023.0.2                                  amazonlinux                              106 k
 libseccomp                                       x86_64                              2.5.3-1.amzn2023.0.2                                  amazonlinux                               71 k
 libsemanage                                      x86_64                              3.4-5.amzn2023.0.2                                    amazonlinux                              121 k
 libutempter                                      x86_64                              1.2.1-4.amzn2023.0.2                                  amazonlinux                               26 k
 lmdb-libs                                        x86_64                              0.9.29-1.amzn2023.0.3                                 amazonlinux                               61 k
 mailcap                                          noarch                              2.1.49-3.amzn2023.0.3                                 amazonlinux                               33 k
 pam                                              x86_64                              1.5.1-8.amzn2023.0.7                                  amazonlinux                              550 k
 shadow-utils                                     x86_64                              2:4.9-12.amzn2023.0.4                                 amazonlinux                              1.1 M
 systemd                                          x86_64                              252.23-10.amzn2023                                    amazonlinux                              4.2 M
 systemd-libs                                     x86_64                              252.23-10.amzn2023                                    amazonlinux                              614 k
 systemd-pam                                      x86_64                              252.23-10.amzn2023                                    amazonlinux                              316 k
 util-linux                                       x86_64                              2.37.4-1.amzn2023.0.4                                 amazonlinux                              2.2 M
 util-linux-core                                  x86_64                              2.37.4-1.amzn2023.0.4                                 amazonlinux                              432 k
 xkeyboard-config                                 noarch                              2.41-1.amzn2023.0.1                                   amazonlinux                              922 k
Installing weak dependencies:
 apr-util-openssl                                 x86_64                              1.6.3-1.amzn2023.0.2                                  amazonlinux                               15 k
 cryptsetup-libs                                  x86_64                              2.6.1-1.amzn2023.0.1                                  amazonlinux                              489 k
 diffutils                                        x86_64                              3.8-1.amzn2023.0.2                                    amazonlinux                              370 k
 libxkbcommon                                     x86_64                              1.6.0-2.amzn2023.0.1                                  amazonlinux                              145 k
 mod_http2                                        x86_64                              2.0.27-1.amzn2023.0.3                                 amazonlinux                              166 k
 mod_lua                                          x86_64                              2.4.65-1.amzn2023.0.2                                 amazonlinux                               60 k
 qrencode-libs                                    x86_64                              4.1.1-2.amzn2023.0.2                                  amazonlinux                               66 k
 systemd-networkd                                 x86_64                              252.23-10.amzn2023                                    amazonlinux                              604 k
 systemd-resolved                                 x86_64                              252.23-10.amzn2023                                    amazonlinux                              268 k

Transaction Summary
===========================================================================================================================================================================================
Install  45 Packages

Total download size: 17 M
Installed size: 58 M
Downloading Packages:
(1/45): apr-1.7.5-1.amzn2023.0.4.x86_64.rpm                                                                                                                5.8 MB/s | 129 kB     00:00    
(2/45): apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64.rpm                                                                                                      528 kB/s |  13 kB     00:00    
(3/45): apr-util-1.6.3-1.amzn2023.0.2.x86_64.rpm                                                                                                           3.2 MB/s |  97 kB     00:00    
(4/45): apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64.rpm                                                                                                   1.5 MB/s |  15 kB     00:00    
(5/45): cracklib-2.9.6-27.amzn2023.0.2.x86_64.rpm                                                                                                          7.2 MB/s |  82 kB     00:00    
(6/45): dbus-1.12.28-1.amzn2023.0.1.x86_64.rpm                                                                                                             1.2 MB/s | 8.5 kB     00:00    
(7/45): cryptsetup-libs-2.6.1-1.amzn2023.0.1.x86_64.rpm                                                                                                     31 MB/s | 489 kB     00:00    
(8/45): dbus-common-1.12.28-1.amzn2023.0.1.noarch.rpm                                                                                                      1.3 MB/s |  15 kB     00:00    
(9/45): dbus-broker-32-1.amzn2023.0.2.x86_64.rpm                                                                                                           8.7 MB/s | 174 kB     00:00    
(10/45): device-mapper-1.02.185-1.amzn2023.0.5.x86_64.rpm                                                                                                   10 MB/s | 137 kB     00:00    
(11/45): device-mapper-libs-1.02.185-1.amzn2023.0.5.x86_64.rpm                                                                                              11 MB/s | 177 kB     00:00    
(12/45): diffutils-3.8-1.amzn2023.0.2.x86_64.rpm                                                                                                            22 MB/s | 370 kB     00:00    
(13/45): generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch.rpm                                                                                             1.2 MB/s |  19 kB     00:00    
(14/45): gzip-1.12-1.amzn2023.0.1.x86_64.rpm                                                                                                                11 MB/s | 160 kB     00:00    
(15/45): hostname-3.23-4.amzn2023.0.3.x86_64.rpm                                                                                                           2.3 MB/s |  28 kB     00:00    
(16/45): httpd-2.4.65-1.amzn2023.0.2.x86_64.rpm                                                                                                            3.7 MB/s |  47 kB     00:00    
(17/45): httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch.rpm                                                                                                 1.4 MB/s |  13 kB     00:00    
(18/45): httpd-core-2.4.65-1.amzn2023.0.2.x86_64.rpm                                                                                                        56 MB/s | 1.4 MB     00:00    
(19/45): httpd-tools-2.4.65-1.amzn2023.0.2.x86_64.rpm                                                                                                      3.8 MB/s |  81 kB     00:00    
(20/45): kmod-libs-29-2.amzn2023.0.5.x86_64.rpm                                                                                                            3.4 MB/s |  62 kB     00:00    
(21/45): libargon2-20171227-9.amzn2023.0.2.x86_64.rpm                                                                                                      1.8 MB/s |  29 kB     00:00    
(22/45): libbrotli-1.0.9-4.amzn2023.0.2.x86_64.rpm                                                                                                          20 MB/s | 315 kB     00:00    
(23/45): libdb-5.3.28-49.amzn2023.0.2.x86_64.rpm                                                                                                            31 MB/s | 756 kB     00:00    
(24/45): libeconf-0.4.0-1.amzn2023.0.3.x86_64.rpm                                                                                                          1.4 MB/s |  28 kB     00:00    
(25/45): libfdisk-2.37.4-1.amzn2023.0.4.x86_64.rpm                                                                                                         8.9 MB/s | 153 kB     00:00    
(26/45): libpwquality-1.4.4-6.amzn2023.0.2.x86_64.rpm                                                                                                      8.2 MB/s | 106 kB     00:00    
(27/45): libseccomp-2.5.3-1.amzn2023.0.2.x86_64.rpm                                                                                                        4.4 MB/s |  71 kB     00:00    
(28/45): libsemanage-3.4-5.amzn2023.0.2.x86_64.rpm                                                                                                         7.7 MB/s | 121 kB     00:00    
(29/45): libutempter-1.2.1-4.amzn2023.0.2.x86_64.rpm                                                                                                       1.8 MB/s |  26 kB     00:00    
(30/45): libxkbcommon-1.6.0-2.amzn2023.0.1.x86_64.rpm                                                                                                       11 MB/s | 145 kB     00:00    
(31/45): lmdb-libs-0.9.29-1.amzn2023.0.3.x86_64.rpm                                                                                                        6.9 MB/s |  61 kB     00:00    
(32/45): mailcap-2.1.49-3.amzn2023.0.3.noarch.rpm                                                                                                          2.6 MB/s |  33 kB     00:00    
(33/45): mod_http2-2.0.27-1.amzn2023.0.3.x86_64.rpm                                                                                                         13 MB/s | 166 kB     00:00    
(34/45): mod_lua-2.4.65-1.amzn2023.0.2.x86_64.rpm                                                                                                          4.6 MB/s |  60 kB     00:00    
(35/45): pam-1.5.1-8.amzn2023.0.7.x86_64.rpm                                                                                                                32 MB/s | 550 kB     00:00    
(36/45): shadow-utils-4.9-12.amzn2023.0.4.x86_64.rpm                                                                                                        56 MB/s | 1.1 MB     00:00    
(37/45): systemd-252.23-10.amzn2023.x86_64.rpm                                                                                                              85 MB/s | 4.2 MB     00:00    
(38/45): systemd-libs-252.23-10.amzn2023.x86_64.rpm                                                                                                         13 MB/s | 614 kB     00:00    
(39/45): systemd-networkd-252.23-10.amzn2023.x86_64.rpm                                                                                                     29 MB/s | 604 kB     00:00    
(40/45): systemd-pam-252.23-10.amzn2023.x86_64.rpm                                                                                                          17 MB/s | 316 kB     00:00    
(41/45): systemd-resolved-252.23-10.amzn2023.x86_64.rpm                                                                                                     19 MB/s | 268 kB     00:00    
(42/45): util-linux-2.37.4-1.amzn2023.0.4.x86_64.rpm                                                                                                        79 MB/s | 2.2 MB     00:00    
(43/45): util-linux-core-2.37.4-1.amzn2023.0.4.x86_64.rpm                                                                                                   14 MB/s | 432 kB     00:00    
(44/45): xkeyboard-config-2.41-1.amzn2023.0.1.noarch.rpm                                                                                                    46 MB/s | 922 kB     00:00    
(45/45): qrencode-libs-4.1.1-2.amzn2023.0.2.x86_64.rpm                                                                                                      94 kB/s |  66 kB     00:00    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                      7.9 MB/s |  17 MB     00:02     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                   1/1 
  Installing       : systemd-libs-252.23-10.amzn2023.x86_64                                                                                                                           1/45 
  Installing       : apr-1.7.5-1.amzn2023.0.4.x86_64                                                                                                                                  2/45 
  Installing       : util-linux-core-2.37.4-1.amzn2023.0.4.x86_64                                                                                                                     3/45 
  Running scriptlet: util-linux-core-2.37.4-1.amzn2023.0.4.x86_64                                                                                                                     3/45 
  Installing       : mailcap-2.1.49-3.amzn2023.0.3.noarch                                                                                                                             4/45 
  Installing       : libfdisk-2.37.4-1.amzn2023.0.4.x86_64                                                                                                                            5/45 
  Installing       : xkeyboard-config-2.41-1.amzn2023.0.1.noarch                                                                                                                      6/45 
  Installing       : libxkbcommon-1.6.0-2.amzn2023.0.1.x86_64                                                                                                                         7/45 
  Installing       : qrencode-libs-4.1.1-2.amzn2023.0.2.x86_64                                                                                                                        8/45 
  Installing       : lmdb-libs-0.9.29-1.amzn2023.0.3.x86_64                                                                                                                           9/45 
  Installing       : apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64                                                                                                                       10/45 
  Installing       : apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64                                                                                                                    11/45 
  Installing       : apr-util-1.6.3-1.amzn2023.0.2.x86_64                                                                                                                            12/45 
  Installing       : httpd-tools-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                        13/45 
  Installing       : libsemanage-3.4-5.amzn2023.0.2.x86_64                                                                                                                           14/45 
  Installing       : shadow-utils-2:4.9-12.amzn2023.0.4.x86_64                                                                                                                       15/45 
  Running scriptlet: httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch                                                                                                                   16/45 
  Installing       : httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch                                                                                                                   16/45 
  Installing       : httpd-core-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                         17/45 
  Installing       : mod_http2-2.0.27-1.amzn2023.0.3.x86_64                                                                                                                          18/45 
  Installing       : mod_lua-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                            19/45 
  Running scriptlet: libutempter-1.2.1-4.amzn2023.0.2.x86_64                                                                                                                         20/45 
  Installing       : libutempter-1.2.1-4.amzn2023.0.2.x86_64                                                                                                                         20/45 
  Installing       : libseccomp-2.5.3-1.amzn2023.0.2.x86_64                                                                                                                          21/45 
  Installing       : libeconf-0.4.0-1.amzn2023.0.3.x86_64                                                                                                                            22/45 
  Installing       : libdb-5.3.28-49.amzn2023.0.2.x86_64                                                                                                                             23/45 
  Installing       : libbrotli-1.0.9-4.amzn2023.0.2.x86_64                                                                                                                           24/45 
  Installing       : libargon2-20171227-9.amzn2023.0.2.x86_64                                                                                                                        25/45 
  Installing       : kmod-libs-29-2.amzn2023.0.5.x86_64                                                                                                                              26/45 
  Installing       : gzip-1.12-1.amzn2023.0.1.x86_64                                                                                                                                 27/45 
  Installing       : cracklib-2.9.6-27.amzn2023.0.2.x86_64                                                                                                                           28/45 
  Installing       : pam-1.5.1-8.amzn2023.0.7.x86_64                                                                                                                                 29/45 
  Installing       : libpwquality-1.4.4-6.amzn2023.0.2.x86_64                                                                                                                        30/45 
  Installing       : util-linux-2.37.4-1.amzn2023.0.4.x86_64                                                                                                                         31/45 
warning: /etc/adjtime created as /etc/adjtime.rpmnew

  Running scriptlet: util-linux-2.37.4-1.amzn2023.0.4.x86_64                                                                                                                         31/45 
  Installing       : generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch                                                                                                               32/45 
  Installing       : diffutils-3.8-1.amzn2023.0.2.x86_64                                                                                                                             33/45 
  Installing       : dbus-common-1:1.12.28-1.amzn2023.0.1.noarch                                                                                                                     34/45 
  Running scriptlet: dbus-common-1:1.12.28-1.amzn2023.0.1.noarch                                                                                                                     34/45 
  Running scriptlet: dbus-broker-32-1.amzn2023.0.2.x86_64                                                                                                                            35/45 
  Installing       : dbus-broker-32-1.amzn2023.0.2.x86_64                                                                                                                            35/45 
  Running scriptlet: dbus-broker-32-1.amzn2023.0.2.x86_64                                                                                                                            35/45 
  Installing       : dbus-1:1.12.28-1.amzn2023.0.1.x86_64                                                                                                                            36/45 
  Installing       : cryptsetup-libs-2.6.1-1.amzn2023.0.1.x86_64                                                                                                                     37/45 
  Installing       : device-mapper-libs-1.02.185-1.amzn2023.0.5.x86_64                                                                                                               38/45 
  Installing       : device-mapper-1.02.185-1.amzn2023.0.5.x86_64                                                                                                                    39/45 
  Installing       : systemd-networkd-252.23-10.amzn2023.x86_64                                                                                                                      40/45 
  Running scriptlet: systemd-networkd-252.23-10.amzn2023.x86_64                                                                                                                      40/45 
  Installing       : systemd-pam-252.23-10.amzn2023.x86_64                                                                                                                           41/45 
  Installing       : systemd-resolved-252.23-10.amzn2023.x86_64                                                                                                                      42/45 
  Running scriptlet: systemd-resolved-252.23-10.amzn2023.x86_64                                                                                                                      42/45 
  Installing       : systemd-252.23-10.amzn2023.x86_64                                                                                                                               43/45 
  Running scriptlet: systemd-252.23-10.amzn2023.x86_64                                                                                                                               43/45 
Creating group 'input' with GID 104.
Creating group 'kvm' with GID 36.
Creating group 'render' with GID 105.
Creating group 'sgx' with GID 106.
Creating group 'systemd-journal' with GID 190.
Creating group 'systemd-network' with GID 192.
Creating user 'systemd-network' (systemd Network Management) with UID 192 and GID 192.
Creating group 'systemd-oom' with GID 999.
Creating user 'systemd-oom' (systemd Userspace OOM Killer) with UID 999 and GID 999.
Creating group 'systemd-resolve' with GID 193.
Creating user 'systemd-resolve' (systemd Resolver) with UID 193 and GID 193.

  Installing       : httpd-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                              44/45 
  Running scriptlet: httpd-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                              44/45 
  Installing       : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                             45/45 
  Running scriptlet: hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                             45/45 
  Running scriptlet: pam-1.5.1-8.amzn2023.0.7.x86_64                                                                                                                                 45/45 
  Running scriptlet: systemd-resolved-252.23-10.amzn2023.x86_64                                                                                                                      45/45 
  Running scriptlet: httpd-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                              45/45 
  Running scriptlet: hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                             45/45 
  Verifying        : apr-1.7.5-1.amzn2023.0.4.x86_64                                                                                                                                  1/45 
  Verifying        : apr-util-1.6.3-1.amzn2023.0.2.x86_64                                                                                                                             2/45 
  Verifying        : apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64                                                                                                                        3/45 
  Verifying        : apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64                                                                                                                     4/45 
  Verifying        : cracklib-2.9.6-27.amzn2023.0.2.x86_64                                                                                                                            5/45 
  Verifying        : cryptsetup-libs-2.6.1-1.amzn2023.0.1.x86_64                                                                                                                      6/45 
  Verifying        : dbus-1:1.12.28-1.amzn2023.0.1.x86_64                                                                                                                             7/45 
  Verifying        : dbus-broker-32-1.amzn2023.0.2.x86_64                                                                                                                             8/45 
  Verifying        : dbus-common-1:1.12.28-1.amzn2023.0.1.noarch                                                                                                                      9/45 
  Verifying        : device-mapper-1.02.185-1.amzn2023.0.5.x86_64                                                                                                                    10/45 
  Verifying        : device-mapper-libs-1.02.185-1.amzn2023.0.5.x86_64                                                                                                               11/45 
  Verifying        : diffutils-3.8-1.amzn2023.0.2.x86_64                                                                                                                             12/45 
  Verifying        : generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch                                                                                                               13/45 
  Verifying        : gzip-1.12-1.amzn2023.0.1.x86_64                                                                                                                                 14/45 
  Verifying        : hostname-3.23-4.amzn2023.0.3.x86_64                                                                                                                             15/45 
  Verifying        : httpd-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                              16/45 
  Verifying        : httpd-core-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                         17/45 
  Verifying        : httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch                                                                                                                   18/45 
  Verifying        : httpd-tools-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                        19/45 
  Verifying        : kmod-libs-29-2.amzn2023.0.5.x86_64                                                                                                                              20/45 
  Verifying        : libargon2-20171227-9.amzn2023.0.2.x86_64                                                                                                                        21/45 
  Verifying        : libbrotli-1.0.9-4.amzn2023.0.2.x86_64                                                                                                                           22/45 
  Verifying        : libdb-5.3.28-49.amzn2023.0.2.x86_64                                                                                                                             23/45 
  Verifying        : libeconf-0.4.0-1.amzn2023.0.3.x86_64                                                                                                                            24/45 
  Verifying        : libfdisk-2.37.4-1.amzn2023.0.4.x86_64                                                                                                                           25/45 
  Verifying        : libpwquality-1.4.4-6.amzn2023.0.2.x86_64                                                                                                                        26/45 
  Verifying        : libseccomp-2.5.3-1.amzn2023.0.2.x86_64                                                                                                                          27/45 
  Verifying        : libsemanage-3.4-5.amzn2023.0.2.x86_64                                                                                                                           28/45 
  Verifying        : libutempter-1.2.1-4.amzn2023.0.2.x86_64                                                                                                                         29/45 
  Verifying        : libxkbcommon-1.6.0-2.amzn2023.0.1.x86_64                                                                                                                        30/45 
  Verifying        : lmdb-libs-0.9.29-1.amzn2023.0.3.x86_64                                                                                                                          31/45 
  Verifying        : mailcap-2.1.49-3.amzn2023.0.3.noarch                                                                                                                            32/45 
  Verifying        : mod_http2-2.0.27-1.amzn2023.0.3.x86_64                                                                                                                          33/45 
  Verifying        : mod_lua-2.4.65-1.amzn2023.0.2.x86_64                                                                                                                            34/45 
  Verifying        : pam-1.5.1-8.amzn2023.0.7.x86_64                                                                                                                                 35/45 
  Verifying        : qrencode-libs-4.1.1-2.amzn2023.0.2.x86_64                                                                                                                       36/45 
  Verifying        : shadow-utils-2:4.9-12.amzn2023.0.4.x86_64                                                                                                                       37/45 
  Verifying        : systemd-252.23-10.amzn2023.x86_64                                                                                                                               38/45 
  Verifying        : systemd-libs-252.23-10.amzn2023.x86_64                                                                                                                          39/45 
  Verifying        : systemd-networkd-252.23-10.amzn2023.x86_64                                                                                                                      40/45 
  Verifying        : systemd-pam-252.23-10.amzn2023.x86_64                                                                                                                           41/45 
  Verifying        : systemd-resolved-252.23-10.amzn2023.x86_64                                                                                                                      42/45 
  Verifying        : util-linux-2.37.4-1.amzn2023.0.4.x86_64                                                                                                                         43/45 
  Verifying        : util-linux-core-2.37.4-1.amzn2023.0.4.x86_64                                                                                                                    44/45 
  Verifying        : xkeyboard-config-2.41-1.amzn2023.0.1.noarch                                                                                                                     45/45 

Installed:
  apr-1.7.5-1.amzn2023.0.4.x86_64                                apr-util-1.6.3-1.amzn2023.0.2.x86_64                           apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64                 
  apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64                   cracklib-2.9.6-27.amzn2023.0.2.x86_64                          cryptsetup-libs-2.6.1-1.amzn2023.0.1.x86_64               
  dbus-1:1.12.28-1.amzn2023.0.1.x86_64                           dbus-broker-32-1.amzn2023.0.2.x86_64                           dbus-common-1:1.12.28-1.amzn2023.0.1.noarch               
  device-mapper-1.02.185-1.amzn2023.0.5.x86_64                   device-mapper-libs-1.02.185-1.amzn2023.0.5.x86_64              diffutils-3.8-1.amzn2023.0.2.x86_64                       
  generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch              gzip-1.12-1.amzn2023.0.1.x86_64                                hostname-3.23-4.amzn2023.0.3.x86_64                       
  httpd-2.4.65-1.amzn2023.0.2.x86_64                             httpd-core-2.4.65-1.amzn2023.0.2.x86_64                        httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch             
  httpd-tools-2.4.65-1.amzn2023.0.2.x86_64                       kmod-libs-29-2.amzn2023.0.5.x86_64                             libargon2-20171227-9.amzn2023.0.2.x86_64                  
  libbrotli-1.0.9-4.amzn2023.0.2.x86_64                          libdb-5.3.28-49.amzn2023.0.2.x86_64                            libeconf-0.4.0-1.amzn2023.0.3.x86_64                      
  libfdisk-2.37.4-1.amzn2023.0.4.x86_64                          libpwquality-1.4.4-6.amzn2023.0.2.x86_64                       libseccomp-2.5.3-1.amzn2023.0.2.x86_64                    
  libsemanage-3.4-5.amzn2023.0.2.x86_64                          libutempter-1.2.1-4.amzn2023.0.2.x86_64                        libxkbcommon-1.6.0-2.amzn2023.0.1.x86_64                  
  lmdb-libs-0.9.29-1.amzn2023.0.3.x86_64                         mailcap-2.1.49-3.amzn2023.0.3.noarch                           mod_http2-2.0.27-1.amzn2023.0.3.x86_64                    
  mod_lua-2.4.65-1.amzn2023.0.2.x86_64                           pam-1.5.1-8.amzn2023.0.7.x86_64                                qrencode-libs-4.1.1-2.amzn2023.0.2.x86_64                 
  shadow-utils-2:4.9-12.amzn2023.0.4.x86_64                      systemd-252.23-10.amzn2023.x86_64                              systemd-libs-252.23-10.amzn2023.x86_64                    
  systemd-networkd-252.23-10.amzn2023.x86_64                     systemd-pam-252.23-10.amzn2023.x86_64                          systemd-resolved-252.23-10.amzn2023.x86_64                
  util-linux-2.37.4-1.amzn2023.0.4.x86_64                        util-linux-core-2.37.4-1.amzn2023.0.4.x86_64                   xkeyboard-config-2.41-1.amzn2023.0.1.noarch               

Complete!
bash-5.2# 
bash-5.2# hostname -I
172.31.14.233 172.17.0.1 192.168.1.1 
bash-5.2# yum whatprocides ifconfig
No such command: whatprocides. Please use /usr/bin/yum --help
It could be a YUM plugin command, try: "yum install 'dnf-command(whatprocides)'"
bash-5.2# yum whatprovides ifconfig
Last metadata expiration check: 0:01:41 ago on Sun Dec 21 07:03:06 2025.
net-tools-2.0-0.59.20160912git.amzn2023.0.3.x86_64 : Basic networking tools
Repo        : amazonlinux
Matched from:
Filename    : /usr/sbin/ifconfig

bash-5.2# yum install net-tools
Last metadata expiration check: 0:01:46 ago on Sun Dec 21 07:03:06 2025.
Dependencies resolved.
===========================================================================================================================================================================================
 Package                                Architecture                        Version                                                         Repository                                Size
===========================================================================================================================================================================================
Installing:
 net-tools                              x86_64                              2.0-0.59.20160912git.amzn2023.0.3                               amazonlinux                              295 k

Transaction Summary
===========================================================================================================================================================================================
Install  1 Package

Total download size: 295 k
Installed size: 921 k
Is this ok [y/N]: y
Downloading Packages:
net-tools-2.0-0.59.20160912git.amzn2023.0.3.x86_64.rpm                                                                                                      13 MB/s | 295 kB     00:00    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                      240 kB/s | 295 kB     00:01     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                                   1/1 
  Installing       : net-tools-2.0-0.59.20160912git.amzn2023.0.3.x86_64                                                                                                                1/1 
  Running scriptlet: net-tools-2.0-0.59.20160912git.amzn2023.0.3.x86_64                                                                                                                1/1 
  Verifying        : net-tools-2.0-0.59.20160912git.amzn2023.0.3.x86_64                                                                                                                1/1 

Installed:
  net-tools-2.0-0.59.20160912git.amzn2023.0.3.x86_64                                                                                                                                       

Complete!
bash-5.2# ifconfig
br-9c851caf66fa: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.1  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::42:afff:fec0:8378  prefixlen 64  scopeid 0x20<link>
        ether 02:42:af:c0:83:78  txqueuelen 0  (Ethernet)
        RX packets 7818  bytes 525687 (513.3 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8318  bytes 53909169 (51.4 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

docker0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
        inet6 fe80::42:12ff:fee6:bfe  prefixlen 64  scopeid 0x20<link>
        ether 02:42:12:e6:0b:fe  txqueuelen 0  (Ethernet)
        RX packets 41373  bytes 122714474 (117.0 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 42000  bytes 190884901 (182.0 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

ens5: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
        inet 172.31.14.233  netmask 255.255.240.0  broadcast 172.31.15.255
        inet6 fe80::85b:94ff:fe07:1eb7  prefixlen 64  scopeid 0x20<link>
        ether 0a:5b:94:07:1e:b7  txqueuelen 1000  (Ethernet)
        RX packets 494443  bytes 677185165 (645.8 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 227066  bytes 269256192 (256.7 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 12  bytes 1020 (1020.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 12  bytes 1020 (1020.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth152a20c: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::7034:4ff:fe09:3855  prefixlen 64  scopeid 0x20<link>
        ether 72:34:04:09:38:55  txqueuelen 0  (Ethernet)
        RX packets 1767  bytes 125191 (122.2 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2755  bytes 53553409 (51.0 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth183b4b3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::e8bc:ccff:fe00:ebd7  prefixlen 64  scopeid 0x20<link>
        ether ea:bc:cc:00:eb:d7  txqueuelen 0  (Ethernet)
        RX packets 2466  bytes 185640 (181.2 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 4325  bytes 53693876 (51.2 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth2e3b20d: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::f016:edff:fe8b:db6f  prefixlen 64  scopeid 0x20<link>
        ether f2:16:ed:8b:db:6f  txqueuelen 0  (Ethernet)
        RX packets 1765  bytes 125239 (122.3 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2926  bytes 53556856 (51.0 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

veth4dbd6eb: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::344a:cbff:fee3:3218  prefixlen 64  scopeid 0x20<link>
        ether 36:4a:cb:e3:32:18  txqueuelen 0  (Ethernet)
        RX packets 7818  bytes 525687 (513.3 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8318  bytes 53909169 (51.4 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

vethd44a1f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::3c9a:4fff:fed1:f29b  prefixlen 64  scopeid 0x20<link>
        ether 3e:9a:4f:d1:f2:9b  txqueuelen 0  (Ethernet)
        RX packets 25  bytes 2944 (2.8 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 57  bytes 5193 (5.0 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

vethef9bd7b: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::6c69:ceff:fe81:e869  prefixlen 64  scopeid 0x20<link>
        ether 6e:69:ce:81:e8:69  txqueuelen 0  (Ethernet)
        RX packets 23  bytes 2737 (2.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 56  bytes 5122 (5.0 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

bash-5.2# httpd
bash-5.2# exit
exit
[root@ip-172-31-14-233 MarioGameOnDocker]# docker run -it --name newos1 --network none  amazonlinux
bash-5.2# yum install httpd
Amazon Linux 2023 repository                                                                                                                               0.0  B/s |   0  B     00:00    
Errors during downloading metadata for repository 'amazonlinux':
  - Curl error (6): Could not resolve hostname for https://cdn.amazonlinux.com/al2023/core/mirrors/2023.9.20251208/x86_64/mirror.list?instance_id=none [Could not resolve host: cdn.amazonlinux.com]
Error: Failed to download metadata for repo 'amazonlinux': Cannot prepare internal mirrorlist: Curl error (6): Could not resolve hostname for https://cdn.amazonlinux.com/al2023/core/mirrors/2023.9.20251208/x86_64/mirror.list?instance_id=none [Could not resolve host: cdn.amazonlinux.com]
Ignoring repositories: amazonlinux
No match for argument: httpd
Error: Unable to find a match: httpd
bash-5.2# exit
exit
[root@ip-172-31-14-233 MarioGameOnDocker]# cd ..
[root@ip-172-31-14-233 /]# 
[root@ip-172-31-14-233 /]# 
[root@ip-172-31-14-233 /]# 
[root@ip-172-31-14-233 /]# 
[root@ip-172-31-14-233 /]# vi docker-compose.yaml
[root@ip-172-31-14-233 /]# docker ps
CONTAINER ID   IMAGE         COMMAND                  CREATED             STATUS             PORTS                                   NAMES
fa4e08e7a5d5   amazonlinux   "/bin/bash"              44 minutes ago      Up 44 minutes                                              c2
75d04dee4f8d   amazonlinux   "/bin/bash"              44 minutes ago      Up 44 minutes                                              c1
637ce5b77633   amazonlinux   "/bin/bash"              56 minutes ago      Up 56 minutes                                              os2
4ac2f903d476   nginx         "/docker-entrypoint.…"   About an hour ago   Up About an hour   0.0.0.0:8080->80/tcp, :::8080->80/tcp   infallible_chaplygin
ad96cd631cf9   amazonlinux   "/bin/bash"              About an hour ago   Up About an hour                                           os1
d834d8289034   httpd         "httpd-foreground"       About an hour ago   Up About an hour   0.0.0.0:82->80/tcp, :::82->80/tcp       myhttpdserver1
[root@ip-172-31-14-233 /]# docker stop 4ac2f903d476
4ac2f903d476
[root@ip-172-31-14-233 /]# docker ps
CONTAINER ID   IMAGE         COMMAND              CREATED             STATUS             PORTS                               NAMES
fa4e08e7a5d5   amazonlinux   "/bin/bash"          44 minutes ago      Up 44 minutes                                          c2
75d04dee4f8d   amazonlinux   "/bin/bash"          45 minutes ago      Up 45 minutes                                          c1
637ce5b77633   amazonlinux   "/bin/bash"          56 minutes ago      Up 56 minutes                                          os2
ad96cd631cf9   amazonlinux   "/bin/bash"          About an hour ago   Up About an hour                                       os1
d834d8289034   httpd         "httpd-foreground"   About an hour ago   Up About an hour   0.0.0.0:82->80/tcp, :::82->80/tcp   myhttpdserver1
[root@ip-172-31-14-233 /]# curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 29.8M  100 29.8M    0     0  45.8M      0 --:--:-- --:--:-- --:--:-- 45.8M
[root@ip-172-31-14-233 /]# date
Sun Dec 21 07:41:07 UTC 2025
[root@ip-172-31-14-233 /]# cd data/
[root@ip-172-31-14-233 data]# date
Sun Dec 21 07:41:11 UTC 2025
[root@ip-172-31-14-233 data]# which date
/usr/bin/date
[root@ip-172-31-14-233 data]# chmod +x /usr/local/bin/docker-compose
[root@ip-172-31-14-233 data]# docker-compose --version
Docker Compose version v5.0.1
[root@ip-172-31-14-233 data]# cd ..
[root@ip-172-31-14-233 /]# docker-compose --help
Usage:  docker compose [OPTIONS] COMMAND

Define and run multi-container applications with Docker

Options:
      --all-resources              Include all resources, even those not used by services
      --ansi string                Control when to print ANSI control characters ("never"|"always"|"auto") (default "auto")
      --compatibility              Run compose in backward compatibility mode
      --dry-run                    Execute command in dry run mode
      --env-file stringArray       Specify an alternate environment file
  -f, --file stringArray           Compose configuration files
      --parallel int               Control max parallelism, -1 for unlimited (default -1)
      --profile stringArray        Specify a profile to enable
      --progress string            Set type of progress output (auto, tty, plain, json, quiet)
      --project-directory string   Specify an alternate working directory
                                   (default: the path of the, first specified, Compose file)
  -p, --project-name string        Project name

Management Commands:
  bridge      Convert compose files into another model

Commands:
  attach      Attach local standard input, output, and error streams to a service's running container
  build       Build or rebuild services
  commit      Create a new image from a service container's changes
  config      Parse, resolve and render compose file in canonical format
  cp          Copy files/folders between a service container and the local filesystem
  create      Creates containers for a service
  down        Stop and remove containers, networks
  events      Receive real time events from containers
  exec        Execute a command in a running container
  export      Export a service container's filesystem as a tar archive
  images      List images used by the created containers
  kill        Force stop service containers
  logs        View output from containers
  ls          List running compose projects
  pause       Pause services
  port        Print the public port for a port binding
  ps          List containers
  publish     Publish compose application
  pull        Pull service images
  push        Push service images
  restart     Restart service containers
  rm          Removes stopped service containers
  run         Run a one-off command on a service
  scale       Scale services 
  start       Start services
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop services
  top         Display the running processes
  unpause     Unpause services
  up          Create and start containers
  version     Show the Docker Compose version information
  volumes     List volumes
  wait        Block until containers of all (or specified) services stop.
  watch       Watch build context for service and rebuild/refresh containers when files are updated

Run 'docker compose COMMAND --help' for more information on a command.
[root@ip-172-31-14-233 /]# dockerr-compose up -d
bash: dockerr-compose: command not found
[root@ip-172-31-14-233 /]# ls
Dockerfile  MarioGameOnDocker  bin  boot  data  dev  docker-compose.yaml  etc  home  index.html  lib  lib64  local  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
[root@ip-172-31-14-233 /]# docker-compose up -d
[+] up 36/37
[+] up 42/42ql:8.0 Pulled                                                                                                                                                            21.9s 
 ✔ Image mysql:8.0                       Pulled                                                                                                                                      21.9s 
 ✔ Image wordpress                       Pulled                                                                                                                                      24.1s 
 ✔ Network mywordpressproj_gfgnet        Created                                                                                                                                      0.2s 
 ✔ Volume mywordpressproj_wordpress      Created                                                                                                                                      0.0s 
 ✔ Volume mywordpressproj_db             Created                                                                                                                                      0.0s 
 ✔ Container mywordpressproj-db-1        Created                                                                                                                                      0.3s 
 ✔ Container mywordpressproj-wordpress-1 Created                                                                                                                                      0.3s 
[root@ip-172-31-14-233 /]# docker network ls
NETWORK ID     NAME                     DRIVER    SCOPE
1593274d61a0   bridge                   bridge    local
9c851caf66fa   gfgnet                   bridge    local
9b4044837829   host                     host      local
e2603e90485d   mywordpressproj_gfgnet   bridge    local
40a3ed78f775   none                     null      local
[root@ip-172-31-14-233 /]# docker volume ls
DRIVER    VOLUME NAME
local     mywordpressproj_db
local     mywordpressproj_wordpress
[root@ip-172-31-14-233 /]# docker-compose ps
NAME                          IMAGE       COMMAND                  SERVICE     CREATED          STATUS          PORTS
mywordpressproj-db-1          mysql:8.0   "docker-entrypoint.s…"   db          39 seconds ago   Up 37 seconds   3306/tcp, 33060/tcp
mywordpressproj-wordpress-1   wordpress   "docker-entrypoint.s…"   wordpress   39 seconds ago   Up 37 seconds   0.0.0.0:8080->80/tcp, [::]:8080->80/tcp
[root@ip-172-31-14-233 /]# docker ps
CONTAINER ID   IMAGE         COMMAND                  CREATED             STATUS             PORTS                                   NAMES
6bb4f480fca9   mysql:8.0     "docker-entrypoint.s…"   46 seconds ago      Up 44 seconds      3306/tcp, 33060/tcp                     mywordpressproj-db-1
1c69e8cca689   wordpress     "docker-entrypoint.s…"   46 seconds ago      Up 44 seconds      0.0.0.0:8080->80/tcp, :::8080->80/tcp   mywordpressproj-wordpress-1
fa4e08e7a5d5   amazonlinux   "/bin/bash"              50 minutes ago      Up 50 minutes                                              c2
75d04dee4f8d   amazonlinux   "/bin/bash"              50 minutes ago      Up 50 minutes                                              c1
637ce5b77633   amazonlinux   "/bin/bash"              About an hour ago   Up About an hour                                           os2
ad96cd631cf9   amazonlinux   "/bin/bash"              2 hours ago         Up About an hour                                           os1
d834d8289034   httpd         "httpd-foreground"       2 hours ago         Up 2 hours         0.0.0.0:82->80/tcp, :::82->80/tcp       myhttpdserver1
[root@ip-172-31-14-233 /]# 