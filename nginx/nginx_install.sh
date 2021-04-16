#  _   _       _   _                  _____           _       _       
# | \ | |     | | | |                / ____|         (_)     | |      
# |  \| | __ _| |_| |__   __ _ _ __ | (___   ___ _ __ _ _ __ | |_ ___ 
# | . ` |/ _` | __| '_ \ / _` | '_ \ \___ \ / __| '__| | '_ \| __/ __|
# | |\  | (_| | |_| | | | (_| | | | |____) | (__| |  | | |_) | |_\__ \
# |_| \_|\__,_|\__|_| |_|\__,_|_| |_|_____/ \___|_|  |_| .__/ \__|___/
#                                                      | |            
#                                                      |_|            
#
#           Github : https://github.nathan-guillaume.be/
#              Website : https://nathan-guillaume.be
#
#    This script is under development, it means that the script is not
#               yet functional or contains bugs
#
#                         Language : French
#                      Author : Nathan Guillame

function menu() {
  clear
  echo "Installation de nginx"
  echo ""
  echo "/!\ Avant l'installation, vérifier les dépendences ! /!\ "
  echo ""
  echo "   1) Installer nginx"
  echo "   2) Vérifier dépendences"
  echo "   3) Quitter"
  until [[ "$MENU_OPTION" =~ ^[1-3]$ ]]; do
    read -rp "Sélectionner une option [1-3] : " MENU_OPTION
  done
  case $MENU_OPTION in
  1)
    echo "Pas encore disponible"
    read -n1 -r -p "Appuyez sur n'importe quelle touche pour continuer..."
    ;;
  2)
    echo "Pas encore disponible"
    read -n1 -r -p "Appuyez sur n'importe quelle touche pour continuer..."
    ;;
  3)
    exit 0
    ;;
  esac
}

menu