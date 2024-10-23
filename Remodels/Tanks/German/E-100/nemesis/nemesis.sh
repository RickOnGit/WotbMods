source $HOME/Documents/WotbMods/Remodels/./variables.sh
#impostare source su home e non su socuments
curl -o "Nemesis1.zip" "https://s963sas.storage.yandex.net/rdisk/7b53d86f8bb7b94111c58ee442ee284454d1c2be79e044743aaf57c4e4ccede0/6719124f/ImCTR-mY0YOdQow8ibFG1SaoPurk-pQQRT9x9j1RH45oqlJv-heBMuIfz8bCkHAEy_N3xFqwy0pLTbAd7H95Ag==?uid=0&filename=E100_BPVIIINEMESIS_3Dst_%28P1NNY%29.zip&disposition=attachment&hash=6ysUXiIPu0yYJ0G2byelknCDcjO9y3%2BkGNh1D1FXzKsy6eYPjtDEg8X7hnz0gZ/Xq/J6bpmRyOJonT3VoXnDag%3D%3D&limit=0&content_type=application%2Fzip&owner_uid=1575460076&fsize=124210459&hid=8944f24e76ebced0967d99c9448d147f&media_type=compressed&tknv=v2&ts=625264f9df1c0&s=cd87d079e638e985c10141c6da2bcda4888c7e7414390af322afbec6f40a9160&pb=U2FsdGVkX1-WStahHIGqm-y9WoTTRBSpH2u8E442wzNBimEh_dIR2YnADMr1vYZwvZUF6LSf9PFgYZi_UefLMD0dn39ZP-l4p9JOCZhvWQk"

unzip Nemesis1.zip > /dev/null 2>&1
mkdir -p mask
cp 3d/Tanks/German/*.sc2.dvpl mask && cp 3d/Tanks/German/*.scg.dvpl mask
if [ -d "$WgDataflat" ]; then
    rsync -a 3d "$WgDataFlat"
elif rsync -a 3d "$WgDataRpm"
fi
rm Nemesis1.zip && rm -rf 3d

echo -e "\nDONE!\n"







