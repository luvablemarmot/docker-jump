sudo su -c "groupadd jumper"
sudo su -c "useradd jumper -s /bin/bash -m -g jumper -G jumper"
passwd=`makepasswd --chars 16`
sudo chpasswd << 'END'
jumper:$passwd
END
echo Session password is: $passwd
