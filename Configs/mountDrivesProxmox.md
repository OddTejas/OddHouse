# A guide to attach external storage to proxmox

## Overview
This goes over on the steps to attach a external drive to proxmox so that backups can be stored on it without the risks of losing them.

## Check
Use `lsblk` command to identify the storage device, it usually is named sdb or sdc

## format
format the partition of the device or ignore to keep any data which you need on it.
`mkfs.ext4 /dev/sdb1(check the device name)`

## Mount
Run `blkid /dev/your_device` to get the UUID which acts like unique name of the drive.

Use this command`mkdir -p /mnt/drive_name(assign name)` to make a directory to mount this drive and remember the name which you assigned the drive.

Now we have to tell the system to mount this drive on boot automatically. We configure fstab file to tell our system.
`nano /etc/fstab` 
Paste this into the fstab file:
`UUID=id /mnt/(drive_name)  ext4  defaults,nofail  0  2
`
To check without rebooting use `mount -a` and verify with `df -h | grep (drive_name)`

Finally use restart systemclt with `systemctl daemon-reload`

## Storing backups onto the drive
- Go to proxmox web ui and select the data center.
- Click on the backup tab and schedule a automated backup
- select the newly mounted device for the storage.
- keep retention for 4 to 5 to prevent running out of space
