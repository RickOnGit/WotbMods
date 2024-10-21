source ./colors.sh
source ./functions.sh

while true 
do
    echo -e ""$CYAN"(?) "$YELLOW"Chose what to do :"$NC"\n"
    echo -e "(A) Merge all files\t (B) Merge all files but not the 3d/tank folder\t (C) Chose which remodel to load\t (Q) Quit the program"

    echo -e -n "\n"$CYAN"(?) "$YELLOW"Chose an option [A-Q]: "$NC""
    read ans

    if [[ "$ans" == "A" || "$ans" == "a" ]]; then
        merge_all
    fi

    if [[ "$ans" == "B" || "$ans" == "b" ]]; then
        merge_no_tanks
    fi

    if [[ "$ans" == "C" || "$ans" == "c" ]]; then
        chose_remodel
    fi

    if [[ "$ans" == "D" || "$ans" == "d" ]]; then
        echo -e "\nQuitting the script...\n"
        break
    fi
    clear
done

#Domande: Considerando la dimensione della repository che altre opzioni posso implementare per scaricare automaticamente i vari file?