# System Architecture
**Version:** 2.0
**Date:** 11 May 2026

```mermaid
flowchart TD

subgraph External network
internet
github
end
internet --> dns
subgraph Server
    subgraph HyperVisor
        proxmox[Proxmox VE]
    end    
    subgraph Network
     dns[ADGuard DNS] --> npm[Nginx Proxy Manager]
end
    subgraph Services
    gitea[Gitea]
    jupyter[Jupyter Notebook]
end
end



npm --> gitea
npm --> jupyter

gitea --> github
```