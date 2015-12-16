#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:7180288:607c74e090cfe461e146c22a0cb64df49bb39946; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6606848:ea6ffdde9e6ac1c093522b5cf6595f4d72519702 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 607c74e090cfe461e146c22a0cb64df49bb39946 7180288 ea6ffdde9e6ac1c093522b5cf6595f4d72519702:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
