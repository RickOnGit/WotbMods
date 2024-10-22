wget https://forblitz.ru/wp-content/uploads/2022/12/nimmermer_steam.zip
unzip nimmermer_steam.zip > /dev/null 2>&1
cp Data/3d/Tanks/German/*.sc2.dvpl . && cp Data/3d/Tanks/German/*.scg.dvpl .
sudo rsync Data/3d $WgData/3d

rm nimmermer_steam.zip && rm -rf Data