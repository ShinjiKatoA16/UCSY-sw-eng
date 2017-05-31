# NFS Network File System
NFS is a simple file sharing method.

## NFS server
1. Install nfs-kernel-server. `sudo apt install nfs-kernel-server`
1. Prepare a directory to be shared. `sudo mkdir /opt/nfs_dir`
1. Change permission of the directory. `sudo chmod 777 /opt/nfs_dir`
1. Edit configuration file. `sudo gedit /etc/exports`, add following line.  
`/opt/nfs_dir 172.16.22.0/24(rw,sync,no_subtree_check,no_root_squash)`
1. Restart NFS server. `sudo exportfs -ra`

## NFS client
1. Install nfs-common. `sudo apt install nfs-common`
1. Mount remote directory. `sudo mount -t nfs 172.16.22.xx:/opt/nfs_dir /mnt`
