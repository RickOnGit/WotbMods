source $HOME/RickWotbMods/general/./variables.sh
wget -O Trettonde.zip "https://blitz-mods.com/mod/remodelings/kranvagn-trettonde-240/download/pc-wg/file?_token=U0Iq8NbgSZvP5bUpOAUbTMCzkeNO96kDR4OfIuU6&ordinal=0"

unzip Trettonde.zip > /dev/null 2>&1

mkdir -p mask

cp 3d/Tanks/European/*.sc2.dvpl mask && cp 3d/Tanks/European/*.scg.dvpl mask

if [ -d "$WgDataflat" ]; then
    rsync -a 3d "$WgDataFlat"
    else rsync -a 3d "$WgDataRpm"
fi

if [ -d "$MyData" ]; then 
    rsync -a 3d "$MyData"
fi

rm Trettonde.zip && rm -rf 3d

echo -e "\nDONE!\n"









