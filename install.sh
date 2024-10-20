WgData="$HOME/.local/share/Steam/steamapps/common/'World of Tanks Blitz'/Data"
RickData="$HOME/WotbMods/Data"

echo -e "\n\e[36m(?) \e[33mChose what to do :\e[0m\n"
echo -e "(A) Merge all files\t (B) Merge all files but not the 3d/tank folder\t (C) Chose which remodel load\n"

read -e -p "\e[36m(?) \e[33mChose an option [A-C] :\e[0m" ans

if [[ "$ans" == "A" || "$ans" == "a" ]]; then
    merge_all
fi

if [[ "$ans" == "A" || "$ans" == "a" ]]; then
    merge_no_tanks
fi

if [[ "$ans" == "A" || "$ans" == "a" ]]; then
    chose_remodel
fi

#Domande: Considerando la dimensione della repository che altre opzioni posso implementare per scaricare automaticamente i vari file?

#Come posso implementare la scelta del modello da caricare? Essenzialmente ogni carro che voglio inserire deve avere il remodeling scaricato ed in oltre i file originali di backup (scg e sc2) per potere almeno avere due scelte. Quindi il problema e' essenzialmente il caricamento delle varie remodelings. I file scg ed sc2 devo inserirli in una cartella con il nome della data mod, successivamente in base alla mod che voglio caricare vado a prelevare dalla data cartella i file sc2 ed scg se ci sono (alcune mod ne hanno solo uno a volte), e li copio nel dato path.
#Ogni modello supportato deve avere la propria directory con all'interno le varie cartelle contenenti le immagini delle varie mod.