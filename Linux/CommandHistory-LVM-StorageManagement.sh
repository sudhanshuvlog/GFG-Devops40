[root@ip-172-31-6-71 gfg40]# history
    1  cd /
    2  fdisk -l
    3  df -hT
    4  pwd
    5  ls
    6  clear
    7  fdisk -l
    8  fdisk -l
    9  fdisk -l
   10  fdisk /dev/nvme1n1
   11  fdisk -l
   12  fdisk /dev/nvme1n1
   13  fdisk -l
   14  mkfs.ext4 /dev/nvme1n1p1 
   15  mkdir data1
   16  ls
   17  mount /dev/nvme1n1p1 /data1
   18  df -hT
   19  cd /data1
   20  touch a.txt
   21  touch b.txt
   22  ls
   23  cd ..
   24  fdisk -l
   25  mkfs.ext4 /dev/nvme1n1p2
   26  mkdir data2
   27  mount /dev/nvme1n1p2 /data2
   28  df -hT
   29  cd /data2
   30  ls
   31  touch c.txt
   32  ls
   33  fdisk -l
   34  yum install lvm2
   35  fdisk -l
   36  pvcreate /dev/nvme2n1
   37  pvdisplay
   38  pvcreate /dev/nvme3n1
   39  pvdisplay
   40  vgcreate myvg /dev/sde /dev/sdc
   41  vgdisplay
   42  lvcreate --size 4.2G --name mylv myvg
   43  lvdisplay
   44  vgdisplay
   45  lvdisplay
   46  mkfs.ext4 /dev/myvg/mylv
   47  df -hT
   48  mkdir gfg40
   49  cd /
   50  pwd
   51  mkdir gfg40
   52  mount /dev/myvg/mylv /gfg40
   53  df -hT
   54  cd gfg40/
   55  ls
   56  touch a.txt b.txt c.py
   57  ls
   58  pwd
   59  vgdisplay
   60  lvdisplay
   61  lvextend --size +300M /dev/myvg/mylv
   62  vgdisplay
   63  lvdisplay
   64  pwd
   65  ls
   66  df -hT
   67  resize2fs /dev/myvg/mylv
   68  df -hT
   69  ls
   70  umount /data1
   71  df -hT
   72  umount /data2
   73  fdisk -l
   74  history