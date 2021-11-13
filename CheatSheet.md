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


<br>

# Useful Paths & Files

**Path** | **Purpose**
:------------: | -------------
`/etc/sudoers` | Configuring *sudo* behavior
`/etc/hostname` | Define *hostname*
`/etc/hosts` | Map *hosts* with an *ip address*
`/dev/LVMGroup` | Contain symbolic links to logical disks.
