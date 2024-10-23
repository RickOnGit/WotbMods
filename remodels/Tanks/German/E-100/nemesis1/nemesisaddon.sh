source $HOME/RickWotbMods/general/./variables.sh
#impostare source su home e non su socuments

wget -O NemesisAddon.zip "https://s615vla.storage.yandex.net/rdisk/218bdf9c95165688ea68456c19aff77fd07803dc63d655582dec119cf825e74c/671982a8/ImCTR-mY0YOdQow8ibFG1TDwXudORky3jCVz4alen5qUQEFovxTD19BTdj04HzsggZMjEHfb3SOa0YtVXEH0Ww==?uid=0&filename=E100_BPVIIINEMESIS_ADDON_(P1NNY).zip&disposition=attachment&hash=25%2B2M3beeudkeksJgZG5yiRokrzLQHQf2Eagz7seR5T%2B5qaTZY9PUPY%2BcMAh0YQnq%2FJ6bpmRyOJonT3VoXnDag%3D%3D&limit=0&content_type=application%2Fzip&owner_uid=1575460076&fsize=12578494&hid=ae9a8db528868bb737321f36fc0e2636&media_type=compressed&tknv=v2&ts=6252d01e7fa00&s=b87799226c422c8a51a3b7f72e3f0f9371acf00649d41c87763da34472c23278&pb=U2FsdGVkX19frU_9NiaMWWD_AGKjKS8PCdSS454RRmFNfbOBYNSlzUvjFsjFlq823n_qcswmWstBcMhkEuigL2PP9vdZimwPFuZA51i1QHs"

unzip NemesisAddon.zip > /dev/null 2>&1

mkdir -p maskaddon

cp 3d/Tanks/German/*.sc2.dvpl maskaddon && cp 3d/Tanks/German/*.scg.dvpl maskaddon

if [ -d "$WgDataflat" ]; then
    rsync -a 3d "$WgDataFlat"
    else rsync -a 3d "$WgDataRpm"
fi

if [ -d "$CData" ]; then 
    rsync -a 3d "$CData"
fi

rm NemesisAddon.zip && rm -rf 3d

echo -e "\nDONE!\n"






