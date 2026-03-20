# Disable Sleep
change the contents of logind.conf file @ /etc/systemd/logind.conf


Uncomment the variable 
`#HandleLidSwitch=suspend` and change it to 

 ` HandleLidSwitch=ignore`

Then restart the service `systemctl restart systemd-logind`
