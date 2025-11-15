[root@ip-172-31-7-88 /]# which python3
/usr/bin/python3
[root@ip-172-31-7-88 /]# history
    1  cd /
    2  date
    3  man date
    4  man yum
    5  yum info httpd
    6  yum install httpd -y
    7  systemctl start httpd
    8  ps -aux
    9  systemctl stop httpd
   10  systemctl start httpd
   11  ps -aux | grep httpd
   12  netstat -tnlp
   13  systemctl restart httpd
   14  netstat -tnlp
   15  useradd dev1
   16  id dev1
   17  passwd dev1
   18  whoami
   19  vi /etc/ssh/sshd_config
   20  systemctl restart sshd
   21  ps -aux
   22  kill 28390
   23  systemd-cgtop
   24  systemd-cgls
   25  systemd-cgtop
   26  cd /etc/systemd/system
   27  ls
   28  mkdir user-1001.slice.d
   29  cd user-1001.slice.d/
   30  ls
   31  vi cpu.conf
   32  systemd-cgtop
   33  systemctl daemon-reload
   34  systemd-cgtop
   35  systemctl status httpd
   36  vi /usr/lib/systemd/system/httpd.service
   37  which httpd
   38  date
   39  cal
   40  ls
   41  which date
   42  /usr/bin/date
   43  which ls
   44  systemctl stop httpd
   45  /usr/sbin/httpd
   46  ps -aux | grep httpd
   47  systemd-cgls
   48  ps -aux | grep httpd
   49  kill 30118
   50  ps -aux | grep httpd
   51  vi /usr/lib/systemd/system/httpd.service
   52  systemctl start httpd
   53  systemctl startus httpd
   54  systemctl status httpd
   55  systemctl enable httpd
   56  cd /etc/systemd/system
   57  ls
   58  cd httpd.service.d/
   59  ls
   60  vi httpdgfg.conf
   61  systemctl daemon-reload 
   62  systemctl restart httpd
   63  systemctl status httpd
   64  cd ..
   65  systemd-cgtop
   66  ps -aux | grep dd
   67  kill 28794
   68  systemd-cgtop
   69  vi /usr/lib/systemd/system/httpd.service
   70  vi gfgs1.service
   71  systemctl daemon-reload 
   72  systemctl start gfgs1
   73  ps -aux | dd
   74  ps -aux | grep dd
   75  systemd-cgtop
   76  ls
   77  cp gfgs1.service gfgs2.service
   78  vi gfgs2.service 
   79  systemctl daemon-reload 
   80  systemctl start gfgs2.service 
   81  ps -aux | grep dd
   82  systemd-cgtop
   83  vi gfgs1.service
   84  vi gfgs2.service
   85  systemctl daemon-reload 
   86  systemctl restart gfgs1
   87  systemctl restart gfgs2
   88  systemd-cgtop
   89  pwd
   90  cd /
   91  vi app.py
   92  python3 app.py 
   93  yum whatprovides pip3
   94  yum install python3-pip
   95  pip3 install flask
   96  python3 app.py 
   97  netstat -tnlp
   98  systemctl stop httpd
   99  python3 app.py 
  100  cd /etc/systemd/system
  101  l
  102  ls
  103  vi gfgapp.service
  104  systemctl daemon-reload 
  105  systemctl start gfgapp
  106  systemctl status gfgapp
  107  journalctl
  108  journalctl -u gfgapp
  109  journalctl -u httpd
  110  journalctl -u gfgapp -f
  111  journalctl -u gfgapp --since today
  112  man journalctl
  113  journalctl -p err
  114  journalctl -p warning
  115  ps -aux | grep httpd
  116  ps -aux | grep python3
  117  journalctl _PID=32195
  118  journalctl _PID=32195 -o json
  119  journalctl _UID=1001
  120  journalctl -u httpd
  121  ls
  122  cd /
  123  ls
  124  ps -aux | grep bash
  125  bash
  126  ps -aux | grep bash
  127  vi gfg.sh
  128  bash gfg.sh 
  129  echo "hi"
  130  vi gfg.sh
  131  bash gfg.sh 
  132  vi gfg.sh 
  133  bash gfg.sh 
  134  bash gfg.sh ram
  135  bash gfg.sh sumit
  136  bash gfg.sh sumit ram sudhanshu
  137  cat gfg.sh 
  138  vi gfg.sh 
  139  bash gfg.sh sumit ram sudhanshu
  140  vi gfg.sh 
  141  bash gfg.sh sumit ram sudhanshu
  142  bash gfg.sh sumit ram sudhanshu dsds dsdd sdsd 
  143  vi gfg.sh 
  144  bash gfg.sh httpd nginx python3
  145  bash gfg.sh httpd nginx python3
  146  vi gfg.sh 
  147  bash gfg.sh httpd nginx python3
  148  ls
  149  vi manage-users.sh
  150  bash manage-users.sh 
  151  bash manage-users.sh dev2
  152  id dev2
  153  bash manage-users.sh dev2 dev3
  154  id dev3
  155  bash manage-users.sh dev2 dev3
  156  vi manage-users.sh 
  157  id dev4
  158  id dev3
  159  date
  160  echo $?
  161  cal
  162  echo $?
  163  date123
  164  echo $?
  165  id dev3
  166  echo $?
  167  id dev5
  168  echo $?
  169  vi manage-users.sh 
  170  bash manage-users.sh dev1 dev2 dev4
  171  cat manage-users.sh 
  172  date
  173  date > log.txt
  174  cat log.txt 
  175  cat > log.txt 
  176  cal > log.txt 
  177  cat log.txt 
  178  cat > ddata.txt
  179  cal >> log.txt 
  180  date >> log.txt
  181  cat log.txt 
  182  yum install httpd
  183  yum install httpd >> log.txt 
  184  yum install httpd -y >> log.txt 
  185  id 
  186  id >> log.txt
  187  id dev1 >> log.txt
  188  cat log.txt 
  189  id dev6 >> log.txt
  190  id dev6 > log.txt
  191  id dev3 > log.txt
  192  id dev3 1> log.txt
  193  id dev7 1> log.txt
  194  id dev7 2> log.txt
  195  cat log.txt 
  196  id dev3 2> log.txt
  197  id dev3 &> log.txt
  198  id dev37 &> log.txt
  199  id dev37 &> /dev/null
  200  vi manage-users.sh 
  201  bash manage-users.sh 
  202  bash manage-users.sh dev1 dev5 qa1
  203  vi manage-users.sh 
  204  [ 0 -eq 4]
  205  [ 0 -eq 4 ]
  206  echo $?
  207  [ 4 -eq 4 ]
  208  echo $?
  209  [ 4 -gt 2 ]
  210  echo $?
  211  [ 4 -gt 8 ]
  212  echo $?
  213  [ 4 -lt 8 ]
  214  echo $?
  215  vi manage-users.sh 
  216  bash manage-users.sh dev1 dev5 ops4 ops4
  217  vi userdb.csv
  218  vi manage-users.sh 
  219  bash manage-users.sh 
  220  cat userdb.csv 
  221  cat manage-users.sh 
  222  which bash
  223  vi manage-users.sh 
  224  chmod +x manage-users.sh 
  225  ls
  226  ./manage-users.sh 
  227  cat manage-users.sh 
  228  which python3
  229  history