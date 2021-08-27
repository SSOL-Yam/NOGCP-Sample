MYHOST=Linux-A
MYIP=192.168.128.201/24
MYGW=192.168.128.1
MYDNS=192.168.128.1
MYDEV=eth0
MYCON=eth0

hostnamectl set-hostname $MYHOST
nmcli con mod $MYDEV ipv4.addresses $MYIP
nmcli con mod $MYDEV ipv4.gateway   $MYGW 
nmcli con mod $MYCON ipv4.dns       $MYDNS
nmcli con mod $MYDEV ipv4.method    manual

nmcli con down $MYCON 
nmcli con up   $MYCON 
systemctl restart network

hostname
ip addr
cat /etc/sysconfig/network-scripts/ifcfg-$MYDEV
cat /etc/resolv.conf
