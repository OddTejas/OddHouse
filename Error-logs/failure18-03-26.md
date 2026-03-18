
# Time Line

## 17 March 2026 - Pi hole & Nginx port conflict, port :80
### The Goal
To resolve port conflict between Nginx and Pi hole

### What changes I made
 1. Reinstalled Pi hole and changed network driver from host to bridge.
 2. With each reinstallation the port conflict persisted.
 3. Upon changing pi hole to bridge driver, a DNSMASQ warning was logged: only local network queries were able to be served

### Outcomes 
Pi hole was down and Nginx worked, but Nginx needed Pihole to route traffic

> unresolved - Moved to 18 March
### What should have been done
 Reinstall Pi hole using docker compose rather than depending on Portainer


 
## 18 March 2026 - The Incident

### The Goal - recreate Pi hole on bridge mode with docker compose

### What changes I made
1. Deleted containers managed by portainer
2. attempted `sudo docker compose up -d` to manually create the desired pihole container
3. Error: Docker contaniner could not be removed — overlayfs bad message
4. Attempted to manually delete the file system ` sudo rm -rf /var/lib/docker/containers/cbd389a.../`
5. Also returned a kernel level error
6. Rebooted the system
7. Kernel went to panic mode: Operating system unrecoverable

### Outcome 
> Fatal error, need to reinstall operating system

### Lesson Learnt
- Never delete files that you do not know
- keep snapshots/ backups

### Resolution
Build a new server using proxmox while still keeping the spirit of oddhouse alive


 
