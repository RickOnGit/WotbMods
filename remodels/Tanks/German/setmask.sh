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
    local dir_name="$1"
    cd $dir_name
    if [ -d "$WgDataFlat" ]; then
        rsync -a mask/* "$WgDataFlat/3d/Tanks/German/"
        else rsync -a mask/* "$WgDataRpm/3d/Tanks/German/"
    fi
    echo -e "\nRemodel applied!"
    cd $German
}

choseremodel() {        
    local dir_name="$1"
    enter() {
    cd $dir_name
    }
    enter
    apply() {
        echo -e "\n$BOLD$CYAN(?)$YELLOW Avaiable remodels: "$NC"\n"
        tree -d -I "mask*"
        echo -e -n "\n$BOLD$CYAN(?)$YELLOW Chose one: "$NC""; read ans

        if [[ "$ans" == "Q" ]]; then
            echo -e "\nWe're done here...\n"
            break
        fi
        if check $ans; then
            loadmask "$ans"
        else clear; echo -e "\n Tf u typed bro... retry\n"
            apply
    fi
    }
    apply
}

selectmodel () { 
    while true; do
    cd $German
    echo -e "$BOLD$CYAN(?)$YELLOW All the tanks: "$NC"\n"
    tree -L 1 -d
    echo -e -n "\n$BOLD$CYAN(?)$YELLOW Chose one: "$NC""; read ans

    if [[ "$ans" == "Q" ]]; then
        echo -e "\nWe're done here...\n"
        break
    fi

    if check $ans; then
        choseremodel "$ans" 
    else clear; echo -e "\n Tf u typed bro... retry\n"
    fi
done
}

selectmodel