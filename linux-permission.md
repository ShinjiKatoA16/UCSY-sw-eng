#Linux(Unix) is a multi-user OS
The biggest difference between Linux and Windows is that Linux is a
multi user OS. Every file of the linux has permission bit which can
be verified using "ls -l" command.
Each file has 3x3 (User/Group/Other x Read/Write/Execute) permission
bits. For example, if the user of file is mr\_a and the group of the file
is engineer, and the permission bit is rw-r-----, the file can be written
only by mr\_a, member of engineer group can read, but other user can not
read or write.
In order to check the permission bit of using GUI, click FILE icon
(application name: nautirus) right-click the file and open property.

#User account management.
root and user who are in "sudo" (sudoer) group can create/delete/modify
user accounts.

#Hands on
Create 2 or more user ID, create 1 or more new group. Test if file
security works as expected or not.

- Linux commands to be used:
    * man (in order to check the usage of each command)
    * sudo (execute command as a root user authorization)
    * adduser (also try useradd)
    * deluser
    * addgroup
    * delgroup
    * usermod
    * gpasswd
    * id
    * passwd

- File permission test
    * ls -l
    * su [user\_name]  (substitue user: change user account without logout)
    * cd, mkdir, rmdir,(pushd, popd)
    * touch, gedit, vim (w!), echo >>, echo | tee ... (file create and update)
    * cat, (more, less,) head, tail  (show file contents)
    * chmod
    * chown
    * rm

- /etc/passwd and /etc/group  
All user name (including system user) are stored in /etc/passwd (Password is stored in /etc/shadow as a hash value). All group name and their members are stored in /etc/group
