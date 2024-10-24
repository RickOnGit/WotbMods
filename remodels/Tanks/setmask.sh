source $HOME/RickWotbMods/general/./variables.sh
source $HOME/RickWotbMods/general/./colors.sh

check() {
    local dir="$1"
    local models=($(ls -d */ | sed 's#/##'))

    for tank in "${models[@]}"; do
        if [[ "$tank" == "$dir" ]]; then
            return 0 
        fi
    done

    return 1
}

loadmask() {
    local remodel="$1"
    cd $remodel
    local var=$(basename "$(pwd | awk -F/ '{print $(NF-2)}')")
    if [ -d "$WgDataFlat" ]; then
        rsync -a mask/* "$WgDataFlat/3d/Tanks/$var/"
        else rsync -a mask/* "$WgDataRpm/3d/Tanks/$var/"
    fi
    echo -e "\nRemodel applied!"
    cd $Nations
}

choseremodel() {        
    local tank="$1"
    enter() {
    cd $tank
    }
    enter
    apply() {
        echo -e "\n$BOLD$CYAN(?)$YELLOW Avaiable remodels: "$NC"\n"
        tree -d -L 1 -I "mask*" --noreport
        echo -e -n "\n$BOLD$CYAN(?)$YELLOW Chose one: "$NC""; read ans3

        if [[ "$ans3" == "Q" ]]; then
            echo -e "\nWe're done here...\n"
            break
        fi
        if check $ans3; then
            loadmask "$ans3"
        else clear; echo -e "\n Tf u typed bro... retry\n"
            apply
    fi
    }
    apply
}

selecnation () { 
    while true; do
        echo -e "\n$BOLD$CYAN(?)$YELLOW Here's the nations: "$NC"\n"
        tree -L 1 -d --noreport
        echo -e -n "\n$BOLD$CYAN(?)$YELLOW Chose one: "$NC""; read -r ans1
        if check "$ans1"; then
            cd $ans1 && selectmodel
        else clear; echo -e "\n Tf u typed bro... retry\n"
        fi
    done
}


selectmodel () { 
    while true; do
    echo -e "$BOLD$CYAN(?)$YELLOW All the tanks: "$NC"\n"
    tree -L 1 -d --noreport
    echo -e -n "\n$BOLD$CYAN(?)$YELLOW Chose one: "$NC""; read -r ans2

    if [[ "$ans2" == "Q" ]]; then
        echo -e "\nWe're done here...\n"
        break
    fi

    if check $ans2; then
        choseremodel "$ans2" 
    else clear; echo -e "\n Tf u typed bro... retry\n"
    fi
done
}

selecnation

#a bug occurs during the second iteration 