# Useful Commands

**Command** | **Purpose**
:------------: | -------------
`visudo` | Edit **/etc/sudoers**
`systemctl <keyword> <service> `  | Manage services : `start` `stop` `restart`. Get status : `status`. Run @ boot : `enable` `disable`
`service --status-all `  | Get actives (`+`) and inactives (`-`) services from `/etc/init.d`
`ls /usr/bin/*session`  | Check if GUI is installed.
`vgrename /dev/vg02 /dev/my_volume_group`  | Rename volume group.
`lvrename /dev/vg02/lvold /dev/vg02/lvnew`  | Rename volume group.
`sudo cryptsetup luksChangeKey /dev/sda5` | Change crypted disk password.
`sudo adduser <username> <(facultatif)group_name>` | Create user (and assign it to a group)
`sudo usermod -aG group_name your_username` | Add an user to a group.

<br>

# Useful Paths & Files

**Path** | **Purpose**
:------------: | -------------
`/etc/sudoers` | Configuring *sudo* behavior
`/etc/hostname` | Define *hostname*
`/etc/hosts` | Map *hosts* with an *ip address*
`/dev/LVMGroup` | Contain symbolic links to logical disks.
`/etc/vsftpd.conf` | FTP server config file.
`/etc/pam.d/common-password` | Password policies.
`/etc/passwd` | User list
`/etc/group` | Group list
