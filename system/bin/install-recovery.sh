#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:9761024:7d752fcaa0112803b83dd5f29eca52e0638d991f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:8388864:f4e9dab2ab3031137c019b57c747fda8955c04f0 EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery 7d752fcaa0112803b83dd5f29eca52e0638d991f 9761024 f4e9dab2ab3031137c019b57c747fda8955c04f0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
