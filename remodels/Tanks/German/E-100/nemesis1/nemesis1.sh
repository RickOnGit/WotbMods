source $HOME/RickWotbMods/general/./variables.sh
wget -O Nemesis1.zip "https://s963sas.storage.yandex.net/rdisk/a3ca0e01859fac657294552ccabe10904b0db11b923bcc30f58efce74bedef78/671983b1/ImCTR-mY0YOdQow8ibFG1SaoPurk-pQQRT9x9j1RH45oqlJv-heBMuIfz8bCkHAEy_N3xFqwy0pLTbAd7H95Ag==?uid=0&filename=E100_BPVIIINEMESIS_3Dst_(P1NNY).zip&disposition=attachment&hash=6ysUXiIPu0yYJ0G2byelknCDcjO9y3%2BkGNh1D1FXzKsy6eYPjtDEg8X7hnz0gZ%2FXq%2FJ6bpmRyOJonT3VoXnDag%3D%3D&limit=0&content_type=application%2Fzip&owner_uid=1575460076&fsize=124210459&hid=8944f24e76ebced0967d99c9448d147f&media_type=compressed&tknv=v2&ts=6252d11b38e40&s=756ce9b0c194b4b614692e9df1a422e29b6b39efdfa14cf37d4516846d915a30&pb=U2FsdGVkX19vlGYIV3WAO6zbfDvV9WRzabK-GxbifPG1n1f6iZbYOKMG8QdzlEMh_8xSTEHWArBzd2a_Kv_8mfuJDgtz9-Me4kUTghvSaYQ"

unzip Nemesis1.zip > /dev/null 2>&1

mkdir -p mask

cp 3d/Tanks/German/*.sc2.dvpl mask && cp 3d/Tanks/German/*.scg.dvpl mask

if [ -d "$WgDataflat" ]; then
    rsync -a 3d "$WgDataFlat"
    else rsync -a 3d "$WgDataRpm"
fi

if [ -d "$CData" ]; then 
    rsync -a 3d "$CData"
fi

rm Nemesis1.zip && rm -rf 3d

echo -e "\nDONE!\n"









