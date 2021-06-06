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
#              Website : https://nathan-guillaume.be/
#
#    This script is under development, it means that the script is not
#               yet functional or contains bugs
#
#                         Language : French
#                      Author : Nathan Guillame

function verif {
  clear
  echo "Vérification des dépendences ..."
  sleep 3 ; update
  clear ; echo "Vérifiaction terminé."
  sleep 3 ; exit 0
}

function update {
  apt-get update && apt-get upgrade -y
  apt-get -y install default-jdk wget screen
}

function install_spigot_1_8_9 {
    cd /home/
    mkdir "minecraft"
    cd minecraft/
    update
    wget "https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar"
    mv spigot-1.8.8-R0.1-SNAPSHOT-latest.jar spigot.jar
    wget "https://raw.githubusercontent.com/Nathan-Guillaume/NathanScripts/main/minecraft/launcher/1_8_9/start.sh"
    wget "https://raw.githubusercontent.com/Nathan-Guillaume/NathanScripts/main/minecraft/config/eula.txt"
    sh start.sh
}

function install_spigot_1_9_2 {
    cd /home/
    mkdir "minecraft"
    cd minecraft/
    update
    wget "https://cdn.getbukkit.org/spigot/spigot-1.9.2-R0.1-SNAPSHOT-latest.jar"
    mv spigot-1.9.2-R0.1-SNAPSHOT-latest.jar spigot.jar
    wget "https://raw.githubusercontent.com/Nathan-Guillaume/NathanScripts/main/minecraft/launcher/1_9_2/start.sh"
    wget "https://raw.githubusercontent.com/Nathan-Guillaume/NathanScripts/main/minecraft/config/eula.txt"
    sh start.sh
}

function install_spigot_1_10_2 {
    cd /home/
    mkdir "minecraft"
    cd minecraft/
    update
    wget "https://cdn.getbukkit.org/spigot/spigot-1.10.2-R0.1-SNAPSHOT-latest.jar"
    mv spigot-1.10.2-R0.1-SNAPSHOT-latest.jar spigot.jar
    wget "https://raw.githubusercontent.com/Nathan-Guillaume/NathanScripts/main/minecraft/launcher/1_10_2/start.sh"
    wget "https://raw.githubusercontent.com/Nathan-Guillaume/NathanScripts/main/minecraft/config/eula.txt"
    sh start.sh
}

function install_bungee {
    cd /home/
    mkdir "bungeecord"
    cd bungeecord/
    update
    wget "https://papermc.io/api/v2/projects/waterfall/versions/1.16/builds/408/downloads/waterfall-1.16-408.jar"
    mv waterfall-1.16-408.jar bungeecord.jar
    wget "https://raw.githubusercontent.com/Nathan-Guillaume/NathanScripts/main/minecraft/launcher/bungeecord/start.sh"
    sh start.sh
}

function menu {
  clear
  echo "Installation d'un serveur minecraft"
  echo ""
  echo "/!\ Avant l'installation, vérifier les dépendences ! /!\ "
  echo ""
  echo "   1) Installer un serveur minecraft"
  echo "   2) Vérifier dépendences"
  echo "   3) Quitter"
  until [[ "$MENU_OPTION" =~ ^[1-3]$ ]]; do
    read -rp "Sélectionner une option [1-3] : " MENU_OPTION
  done
  case $MENU_OPTION in
  1)
    menuJAR
    ;;
  2)
    verif
    ;;
  3)
    exit 0
    ;;
  esac
}

function menuJAR {
  clear
  echo "Choix de la version de Minecraft"
  echo ""
  echo "/!\ Avant l'installation, vérifier quand dans le dossier home, il n'y ai pas de fichier nommé minecraft & bungeecord ! /!\ "
  echo ""
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
    #menuSpongeVersion
    echo "Pas encore disponible"
    read -n1 -r -p "Appuyez sur n'importe quelle touche pour continuer..."
    ;;
  4)
    exit 0
    ;;
  esac
}

function menuSpigotVersion {
  clear
  echo "Choix de la version de Spigot"
  echo ""
  echo "/!\ Avant l'installation, vérifier quand dans le dossier home, il n'y ai pas de fichier nommé minecraft ! /!\ "
  echo ""
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

function menuSpongeVersion {
  clear
  echo "Choix de la version de Sponge"
  echo ""
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
