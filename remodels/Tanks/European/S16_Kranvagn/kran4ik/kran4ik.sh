source $HOME/RickWotbMods/general/./variables.sh
wget -O kran4ik.zip "https://forblitz.ru/wp-content/uploads/2023/02/kran4ik_forblitz_steam.zip"

unzip kran4ik.zip > /dev/null 2>&1

mkdir -p mask

cp Data/3d/Tanks/European/*.sc2.dvpl mask && cp Data/3d/Tanks/European/*.scg.dvpl mask

if [ -d "$WgDataflat" ]; then
    rsync -a Data/* "$WgDataFlat"
    else rsync -a Data/* "$WgDataRpm"
fi

if [ -d "$MyData" ]; then 
    rsync -a Data/* "$MyData"
fi

rm kran4ik.zip && rm -rf Data

echo -e "\nDONE!\n"









