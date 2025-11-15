#name="sudhanshu"
#name=$1
#name2=$2

#name=$@
packages=$@
#echo "hi $name"
yum install $packages -y
mkdir test
touch a.txt
date
cal
