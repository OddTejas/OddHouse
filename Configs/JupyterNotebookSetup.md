# Guide to deploy Jupyter on a proxmox server for data analysis

## overview
This guide goes over the installation process of Jupyter on proxmox LXC container for data analysis and processing
---

## Container settings
- storage - 10 GB
- CPU - 2 cores
- Memory - 1GB
- OS - Debian

## Installation of debian
Use proxmox community scripts to install debian

## Installation of Jupyter
### Prerequsites
> use the command pct move[debian container ID] to login to the system
- Have an lxc with debian based OS installed
- update and upgrade OS
- Install python3 and pip
### Deploying Jupyter
- Use pip to download matplotlib, pandas and jupyter
`pip3 install pandas matplotlib jupyter --break-system-packages`
- verify with `python3 -c "import pandas, matplotlib, jupyter; print('all good')"`
>Remember to use --break-system-packages on debian 13 based systems
- make jupyter.service file at `/etc/systemd/system/jupyter.service`

- edit the file and paste the following 
```
[Unit]
Description=Jupyter Notebook
After=network.target

[Service]
Type=simple
User=root
ExecStart=/usr/local/bin/jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
Restart=always

[Install]
WantedBy=multi-user.target 
```  
- make the program run on startup by running these commands
`systemctl daemon-restart`
`systemctl enable jupyter.service`
`systemctl start jupyter.service`
## outcomes
- Jupyter deployed on container's IP on port 8888
- Installed matplotlib, pandas, python and pip
## misatkes by me
- Make sure that the commands are being run in the correct container
- verify installation of pip and and python libs
