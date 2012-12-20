#!/system/xbin/sh
APP_PATH="/data/data/org.openaos.tscalibrator/files/"
SYS_PATH="/system/usr/idc/"
NAME="msm_touchscreen.idc"
if [ -f "$APP_PATH"/"$NAME" ]
then
	/system/xbin/mkdir -p "$SYS_PATH"
	/system/xbin/cp "$APP_PATH"/"$NAME" "$SYS_PATH"/"$NAME"
fi

if [ -f "$SYS_PATH"/"$NAME" ]
then
	/system/xbin/chmod 0664 "$SYS_PATH"/"$NAME"
fi
