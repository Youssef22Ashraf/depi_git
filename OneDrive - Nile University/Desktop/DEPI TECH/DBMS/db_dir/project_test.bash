#! /bin/bash

echo "******************************** DBMS Project ************************************"
echo "choose from the following menu: "

Home_DIR="DBMS"

select choice in "create Database" "Connect to Database" "Rename Database" "Update Database" "Drop Database" "exit menu"
do 
    case $choice in
        1) ../db_func/create_db.bash ;;
        2) ../db_func/connect_db.bash ;;
        3) ../db_func/rename_db.bash ;;
        4) ../db_func/update_db.bash ;;
        5) ../db_func/drop_db.bash ;;
        6) 
            echo "exitting the Menu"
            break 
        ;;
        *) 
        echo "your choice ($choice) not in the Menu please try again" 
        ;;
    esac
done
