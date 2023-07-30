# keyboard and timezone
lang en_US
keyboard sv-latin1
timezone Europe/Stockholm --utc

# Install options
shutdown
text
cdrom
eula --agreed
firstboot --disable
selinux --enforcing

# Networking and firewall
network --bootproto=dhcp
firewall --enabled

# Disk setup


# Repo

# packages
%include packages-base.ks
%include packages-tools.ks

# Post script
%include post.ks