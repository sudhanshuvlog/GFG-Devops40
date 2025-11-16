OS1
  1      1  cd /
    2  clear
    3  ssh-keygen -t rsa
    4  cat /root/.ssh/id_rsa
    5  cat /root/.ssh/id_rsa.pub
    6  ssh root@3.110.156.142
    7  ssh root@3.110.156.142
    8  clear
    9  ls
   10  mkdir impdata
   11  cd impdata/
   12  ls
   13  touch a.txt
   14  pwd
   15  rsync /impdata/ root@3.110.156.142:/backup
   16  rsync -av /impdata/ root@3.110.156.142:/backup
   17  rsync -av /impdata/ root@3.110.156.142:/backup
   18  touch b.txt c.txt
   19  rsync -av /impdata/ root@3.110.156.142:/backup
   20  touch d.txt
   21  ls
   22  rsync -av /impdata/ root@3.110.156.142:/backup
   23  yum whatprovies crontab
   24  yum whatprovides crontab
   25  yum install cronie
   26  crontab -l
   27  crontab -e
   28  crontab -l
   29  systemctl status crond
   30  systemctl start crond
   31  crontab -l
   32  ls
   33  touch e.txt
   34  ls
   35  touch f.txt
   36  ls
   37  touch g.txt
   38  ls
   39  yum install httpd
   40  systemctl start httpd
   41  yum install firewalld -y
   42  systemctl start firewalld
   43  firewall-cmd --list-all
   44  firewall-cmd --get-services
   45  firewall-cmd --get-services | grep http
   46  firewall-cmd --add-service http
   47  firewall-cmd --list-all
   48  firewall-cmd --reload
   49  firewall-cmd --list-all
   50  firewall-cmd --add-service http --permanent
   51  firewall-cmd --list-all
   52  firewall-cmd --list-all
   53  firewall-cmd --reload
   54  firewall-cmd --list-all
   55  vi /etc/httpd/conf/httpd.conf 
   56  systemctl restart httpd
   57  netstat -tnlp
   58  firewall-cmd --list-all
   59  firewall-cmd --add-port 82/tcp
   60  firewall-cmd --add-port 82/tcp --permanent
   61  firewall-cmd --reload
   62  firewall-cmd --list-all
   63  cat /var/log/httpd/access_log 
   64  firewall-cmd --add-rich-rule='rule family="ipv4" source address "202.142.122.245" reject'
   65  firewall-cmd --add-rich-rule='rule family="ipv4" source address="202.142.122.245" reject'
   66  firewall-cmd --list-all
   67  firewall-cmd --remove-rich-rule='rule family="ipv4" source address="202.142.122.245" reject'
   68  ping 8.8.8.8
   69  firewall-cmd --direct --add-rule ipv4 filter OUTPUT -d 8.8.8.8 -j DROP
   70  firewall-cmd --direct --add-rule ipv4 filter OUTPUT 0 -d 8.8.8.8 -j DROP
   71  ping 8.8.8.8
   72  cd /
   73  history

OS2

       1  exit
    2  mkdir /data
    3  exit
    4  cd /
    5  clear
    6  cd /root/.ssh/
    7  ls
    8  cat authorized_keys 
    9  vi authorized_keys 
   10  cd /
   11  ls
   12  cd backup/
   13  ls
   14  ls
   15  ls
   16  ls
   17  ls
   18  ls
   19  ls
   20  yum install firewalld -y
   21  systemctl start firewalld
   22  systemctl status firewalld
   23  firewall-cmd --list-all
   24  cd /
   25  history