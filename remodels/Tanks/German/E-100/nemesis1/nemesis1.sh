source $HOME/RickWotbMods/general/./variables.sh
wget -O Nemesis1.zip "https://forblitz.ru/wp-content/uploads/2023/06/e100_pinny_steam.zip"

unzip Nemesis1.zip > /dev/null 2>&1

mkdir -p mask

cp Data/3d/Tanks/German/*.sc2.dvpl mask && cp Data/3d/Tanks/German/*.scg.dvpl mask

if [ -d "$WgDataflat" ]; then
    rsync -a Data/* "$WgDataFlat"
    else rsync -a Data/* "$WgDataRpm"
fi

if [ -d "$MyData" ]; then 
    rsync -a Data/* "$MyData"
fi

rm Nemesis1.zip && rm -rf Data

echo -e "\nDONE!\n"









