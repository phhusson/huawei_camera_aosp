#!/bin/bash

set -e

smaliV=2.2.2
[ ! -f baksmali-${smaliV}.jar -o ! -f smali-${smaliV}.jar ] && \
	wget -c \
		https://bitbucket.org/JesusFreke/smali/downloads/baksmali-${smaliV}.jar \
		https://bitbucket.org/JesusFreke/smali/downloads/smali-${smaliV}.jar
baksmali() {
	java -jar baksmali-${smaliV}.jar "$@" 
}
smali() {
	java -jar smali-${smaliV}.jar "$@" 
}
if [ ! -d "$1"/priv-app/HwCamera2 ];then
	exit 1
fi

if [ ! -f "$2"/shared.x509.pem ];then
	exit 1
fi

rm -Rf out
baksmali deodex -b $1/framework/arm/boot.oat "$1"/priv-app/HwCamera2/oat/arm/HwCamera2.odex
find modded -type f |while read f;do
find out -type f -name "$(basename "$f")" |while read g;do
		cp "$f" "$g"
	done
done

grep -HRF android/widget/HwAbsListView out |cut -d ':' -f 1 |uniq |while read f;do
	sed -i -E 's;android/widget/HwAbsListView;android/widget/AbsListView;g' $f
done

smali assemble -o classes.dex out

cp $1/priv-app/HwCamera2/HwCamera2.apk HwCamera2.apk
mkdir -p lib/armeabi-v7a
cp $1/priv-app/HwCamera2/lib/arm/* lib/armeabi-v7a/
zip HwCamera2.apk classes.dex
zip HwCamera2.apk lib/armeabi-v7a/*
signapk $2/shared.x509.pem $2/shared.pk8 HwCamera2.apk HwCamera2.signed.apk
