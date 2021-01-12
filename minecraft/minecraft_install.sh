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

function update() {
  apt-get update
}

function install_spigot_1_8_9() {
    cd /home/
    mkdir "minecraft"
    cd minecraft/
    update
    installDepend
    wget "https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar"
    mv spigot-1.8.8-R0.1-SNAPSHOT-latest.jar spigot.jar
}

function install_spigot_1_9_2() {
    cd /home/
    mkdir "minecraft"
    cd minecraft/
    update
    installDepend
    wget "https://cdn.getbukkit.org/spigot/spigot-1.9.2-R0.1-SNAPSHOT-latest.jar"
    mv spigot-1.9.2-R0.1-SNAPSHOT-latest.jar spigot.jar
}

function install_spigot_1_10_2() {
    cd /home/
    mkdir "minecraft"
    cd minecraft/
    update
    installDepend
    wget "https://cdn.getbukkit.org/spigot/spigot-1.10.2-R0.1-SNAPSHOT-latest.jar"
    mv spigot-1.10.2-R0.1-SNAPSHOT-latest.jar spigot.jar
}

#function install_bungee() {
#}

#function install_sponge() {
#}

function installJava() {
  apt-get -y install oracle-java8-installer
}

function menu() {
  clear
  echo "Installation d'un serveur minecraft"
  echo ""
  echo "Qu'est-ce que tu veux faire ?"
  echo "   1) Installer un serveur minecraft"
  echo "   2) Mettre à jour"
  echo "   3) Quitter"
  until [[ "$MENU_OPTION" =~ ^[1-3]$ ]]; do
    read -rp "Sélectionner une option [1-3] : " MENU_OPTION
  done
  case $MENU_OPTION in
  1)
    menuJAR
    ;;
  2)
    update
    ;;
  3)
    exit 0
    ;;
  esac
}

function menuJAR() {
  clear
  echo "Choix de la version de Minecraft"
  echo ""
  echo "Qu'est-ce que tu veux faire ?"
  echo "   1) Spigot"
  echo "   2) BungeeCord"
  echo "   3) Sponge"
  echo "   4) Quitter"
  until [[ "$MENU_JAR" =~ ^[1-4]$ ]]; do
    read -rp "Sélectionner une option [1-4] : " MENU_JAR
  done
  case $MENU_JAR in
  1)
    menuSpigotVersion
    ;;
  2)
    install_bungee
    ;;
  3)
    menuSpongeVersion
    ;;
  4)
    exit 0
    ;;
  esac
}

function menuSpigotVersion() {
  clear
  echo "Choix de la version de Spigot"
  echo ""
  echo "Qu'est-ce que tu veux faire ?"
  echo "   1) 1.8.9"
  echo "   2) 1.9.2"
  echo "   3) 1.10.2"
  echo "   4) Quitter"
  until [[ "$MENU_SPIGOT_VERSION" =~ ^[1-4]$ ]]; do
    read -rp "Sélectionner une option [1-4] : " MENU_SPIGOT_VERSION
  done
  case $MENU_SPIGOT_VERSION in
  1)
    install_spigot_1_8_9
    ;;
  2)
    install_spigot_1_9_2
    ;;
  3)
    install_spigot_1_10_2
    ;;
  4)
    exit 0
    ;;
  esac
}

function menuSpongeVersion() {
  clear
  echo "Choix de la version de Sponge"
  echo ""
  echo "Qu'est-ce que tu veux faire ?"
  echo "   1) 1.8.9"
  echo "   2) 1.9.2"
  echo "   3) 1.10.2"
  echo "   4) Quitter"
  until [[ "$MENU_SPONGE_VERSION" =~ ^[1-4]$ ]]; do
    read -rp "Sélectionner une option [1-4] : " MENU_SPONGE_VERSION
  done
  case $MENU_SPONGE_VERSION in
  1)
    echo "Pas encore disponible"
    read -n1 -r -p "Appuyez sur n'importe quelle touche pour continuer..."
    ;;
  2)
    echo "Pas encore disponible"
    read -n1 -r -p "Appuyez sur n'importe quelle touche pour continuer..."
    ;;
  3)
    echo "Pas encore disponible"
    read -n1 -r -p "Appuyez sur n'importe quelle touche pour continuer..."
    ;;
  4)
    exit 0
    ;;
  esac
}

menu