based on: https://gist.github.com/tjvr/f82004565139a5b13031af1ce5a50a02

Make sure this line is in: `/etc/crypttab`

```
CryptDisk UUID=ceccafab-dd90-4243-9bc7-11ba57523875 none luks,retry=1,lvm=vg
```

Make sure this line is in `/etc/fstab`

```
/dev/mapper/vg-swap none            swap    sw              0       0
```

Make sure this line is in `/etc/initramfs-tools/conf.d/resume`
```
RESUME=/dev/vg/swap
```
Make sure these lines are in: '/etc/default/grub'
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
GRUB_CMDLINE_LINUX="cryptopts=target=CryptDisk,source=/dev/disk/by-uuid/ceccafab-dd90-4243-9bc7-11ba57523875,lvm=vg,resume=/dev/vg/swap"

Make sure the power button is configured to hibernate

TODO: enable wifi
