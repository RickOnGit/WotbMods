source $HOME/RickWotbMods/general/./variables.sh
#impostare source su home e non su socuments
wget https://forblitz.ru/wp-content/uploads/2022/08/update_e100_deusex_sadabsolution_steam.zip
unzip update_e100_deusex_sadabsolution_steam.zip > /dev/null 2>&1
mkdir -p mask
cp Data/3d/Tanks/German/*.sc2.dvpl mask && cp Data/3d/Tanks/German/*.scg.dvpl mask
if [ -d "$WgDataflat" ]; then
    rsync -a Data/* "$WgDataFlat"
    else rsync -a Data/* "$WgDataRpm"
fi

if [ -d "$CData" ]; then 
    rsync -a Data/* "$CData"
fi
rm update_e100_deusex_sadabsolution_steam.zip && rm -rf Data

echo -e "\nDONE!\n"