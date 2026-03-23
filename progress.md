# Daily progress 
## 23 March '26
- Deployed AdGuard on 192.168.0.127
![Adguard](/images/V2-images/Screenshots/adblock.jpg)
- Changed the local domain name from .house to .lan to prevent issues as .house is a real domain for sale
- Added DNS rewrite to route local domain names to nginx proxy manager.
![DNS rewrite in adguard](/images/V2-images/Screenshots/dns-write.jpg)

## 22 March'26
- Changed the update repositories from VE subscription to VE non-subscription
- Installed Nginx proxy manager with VE community scripts 
- ![nginx proxy manager](/images/V2-images/Screenshots/npm.jpg)
- deployed on 192.168.0.109
- configured it to act as a reverse proxy and route proxmox.house as 192.168.0.81:8006
- ![web-ui](/images/V2-images/Screenshots/npm-ui.jpg)


## 19 March '26
- Installed Proxmox on the old laptop
- logged in and updated systemd-logind files to prevent sleep
- commited a new branch for Oddhouse V2 proxmox setup
