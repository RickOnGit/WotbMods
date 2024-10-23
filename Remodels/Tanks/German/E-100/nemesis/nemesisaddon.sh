source $HOME/Documents/WotbMods/Remodels/./variables.sh
#impostare source su home e non su socuments
curl -o "NemesisAddon.zip" "https://s615vla.storage.yandex.net/rdisk/4d86f106eb27b6a54f936e0416bee104f49e322bfb2d1d9fa387a0fc154f38eb/67191269/ImCTR-mY0YOdQow8ibFG1TDwXudORky3jCVz4alen5qUQEFovxTD19BTdj04HzsggZMjEHfb3SOa0YtVXEH0Ww==?uid=0&filename=E100_BPVIIINEMESIS_ADDON_%28P1NNY%29.zip&disposition=attachment&hash=25%2B2M3beeudkeksJgZG5yiRokrzLQHQf2Eagz7seR5T%2B5qaTZY9PUPY%2BcMAh0YQnq/J6bpmRyOJonT3VoXnDag%3D%3D&limit=0&content_type=application%2Fzip&owner_uid=1575460076&fsize=12578494&hid=ae9a8db528868bb737321f36fc0e2636&media_type=compressed&tknv=v2&ts=62526512aac40&s=c689f4138c6a2a994219620dec33109763032417b405f5794d8a285cba5bb7c5&pb=U2FsdGVkX18lIFuYZK9DX8ya_jgLVEcKjwijilz5tM895svZQyxtC3qlqVFhWirB3zHlRWKVwUg1U44GS-q3vZyqCMc36ZEYsM91Qf5-s7E"

unzip NemesisAddon.zip > /dev/null 2>&1
mkdir -p maskeff
cp 3d/Tanks/German/*.sc2.dvpl maskeff && cp 3d/Tanks/German/*.scg.dvpl maskeff
if [ -d "$WgDataflat" ]; then
    rsync -a 3d "$WgDataFlat"
elif rsync -a 3d "$WgDataRpm"
fi
rm NemesisAddon.zip && rm -rf 3d

echo -e "\nDONE!\n"






