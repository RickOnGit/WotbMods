source $HOME/RickWotbMods/general/./variables.sh

wget https://forblitz.ru/wp-content/uploads/2024/07/e50_m_panzerbarracuda_forblitz_05072024_pc.zip
unzip e50_m_panzerbarracuda_forblitz_05072024_pc.zip > /dev/null 2>&1
mkdir -p mask
cp Data/3d/Tanks/German/*.sc2.dvpl mask && cp Data/3d/Tanks/German/*.scg.dvpl mask > /dev/null 2>&1

if [ -d "$WgDataflat" ]; then
    rsync -a Data/* "$WgDataFlat"
    else rsync -a Data/* "$WgDataRpm"
fi

if [ -d "$CData" ]; then 
    rsync -a Data/* "$CData"
fi

rm e50_m_panzerbarracuda_forblitz_05072024_pc.zip && rm -rf Data

echo -e "\nDONE!\n"