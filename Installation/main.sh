source general/./colors.sh
source general/./logo.sh
source ../Remodels/
#source ./functions.sh

while true 
do
    show_logo
    tput cup 2 50
    echo -e "$BOLD$CYAN(?)$YELLOW Chose what to do :"$NC"\n"
    tput cup 4 50 
    echo -e "(A) Merge all files\n"
    tput cup 6 50
    echo -e "(B) Merge all files but not the 3d/tank folder\n"
    tput cup 8 50
    echo -e "(C) Chose which remodel to load\n"
    tput cup 10 50
    echo -e "(Q) Quit the program\n"
    tput cup 12 50
    echo -e -n ""$BOLD""$CYAN"(?) "$YELLOW" Chose an option [A-Q]: "$NC""
    read ans
    tput cup 16

    case $ans in
        A)        
            #merge all files
            ;;
        B)
            #merge all files but no tanks
            ;;
        C)
            #chose the remodel to be loaded
            ;;
        Q)
            echo -e "\nQuitting the script..."
            break
            ;;
        *)
            echo -e "Invalid choice, retry..."
            ;;        
    esac
    clear
done