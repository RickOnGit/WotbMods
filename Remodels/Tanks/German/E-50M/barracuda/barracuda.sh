source $HOME/Documents/WotbMods/Remodels/./variables.sh
#impostare source su home e non su socuments
wget https://forblitz.ru/wp-content/uploads/2024/07/e50_m_panzerbarracuda_forblitz_05072024_pc.zip
unzip e50_m_panzerbarracuda_forblitz_05072024_pc.zip > /dev/null 2>&1
cp Data/3d/Tanks/German/*.sc2.dvpl mask && cp Data/3d/Tanks/German/*.scg.dvpl mask > /dev/null 2>&1
rsync -a Data/* "$WgDataFlat"
rm e50_m_panzerbarracuda_forblitz_05072024_pc.zip && rm -rf Data

echo -e "\nDONE!\n"