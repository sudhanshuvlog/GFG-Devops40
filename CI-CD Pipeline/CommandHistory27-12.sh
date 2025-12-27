[root@ip-172-31-40-11 job1]# history
    1  cd /
    2  clear
    3  ls
    4  mkdir data
    5  cd data
    6  ls
    7  cd ..
    8  curl -sO http://15.206.28.16/jnlpJars/agent.jar
    9  ls
   10  java -jar agent.jar -url http://15.206.28.16/ -secret 181756065003c0451fc4f495c3c6facbd8ccc7a7f4cea95a6e6b9ae0a1a30a68 -name worker1 -webSocket -workDir "/data"
   11  wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.rpm
   12  ls
   13  yum install jdk-21_linux-x64_bin.rpm -y
   14  java -jar agent.jar -url http://15.206.28.16/ -secret 181756065003c0451fc4f495c3c6facbd8ccc7a7f4cea95a6e6b9ae0a1a30a68 -name worker1 -webSocket -workDir "/data"
   15  java -jar agent.jar -url http://15.206.28.16/ -secret 181756065003c0451fc4f495c3c6facbd8ccc7a7f4cea95a6e6b9ae0a1a30a68 -name worker1 -webSocket -workDir "/data" &
   16  date
   17  ps -aux | grep java
   18  yum
   19  rpm -q httpd
   20  yum install git -y
   21  cd data
   22  ls
   23  cd workspace/
   24  ls
   25  cd job1/
   26  ls
   27  ps -aux | grep java
   28  docker images
   29  docker ps
   30  git log --oneline
   31  git log --oneline
   32  ps -aux | grep java
   33  history