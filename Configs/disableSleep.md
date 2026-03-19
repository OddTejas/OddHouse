# Disable Sleep
change the contents of logind.conf file @ /etc/systemd/logind.conf


Uncomment the variable 
`` 
  #HandleLidSwitch=suspend
``
Then restart the service `systemctl restart systemd-logind`
