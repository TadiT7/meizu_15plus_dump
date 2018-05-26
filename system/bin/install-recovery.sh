#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/11120000.ufs/by-name/recovery:32043008:f26ba10e7c8b7101e1a3694233dc2f8d3c9676a7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/11120000.ufs/by-name/boot:22278144:652e901b0df02458cbb8c97d752e1d1462077286 EMMC:/dev/block/platform/11120000.ufs/by-name/recovery f26ba10e7c8b7101e1a3694233dc2f8d3c9676a7 32043008 652e901b0df02458cbb8c97d752e1d1462077286:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
