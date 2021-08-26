MYHOST=Linux-A
MYIP=172.31.15.1/20
MYGW=172.31.0.1
MYDNS=172.31.0.1
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
