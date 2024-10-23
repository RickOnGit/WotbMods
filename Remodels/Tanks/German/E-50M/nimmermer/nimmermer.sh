source ../../.././variables.sh
wget https://forblitz.ru/wp-content/uploads/2022/12/nimmermer_steam.zip
unzip nimmermer_steam.zip > /dev/null 2>&1
cp Data/3d/Tanks/German/*.sc2.dvpl mask && cp Data/3d/Tanks/German/*.scg.dvpl mask
rsync -a Data/* "$WgDataFlat"
rm nimmermer_steam.zip && rm -rf Data

echo -e "\nDONE!\n"