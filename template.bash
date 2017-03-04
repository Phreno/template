#!/bin/bash

# Développeur ....: K3rn€l_P4n1K
# Description ....: *filename* - 1.0 - *date* 
# Plateformes ....: Ubuntu

# Fonctionnalité .: *Description rapide de la fonctionnalité*
# Intention ......: *Description rapide du besoin à l'origine du script*
# Remarque .......: *Autres indications complémentaires*

# ------------------
# VARIABLES GLOBALES
# ------------------

# Chemin du script
SCRIPT="${0}"

# Nom du script
SCRIPT_NAME="$( basename ${0} )"

# Dossier du script
SCRIPT_DIR="$( dirname ${0} )"

# Fichier de log des erreurs
LOGERR="${SCRIPT_NAME}.err.log"

# ---------
# FONCTIONS
# ---------

# Exécutée lors de la sortie du script (CTRL+C par exemple)
onExit(){
    displayLog
}
trap onExit EXIT


# Exécutée lors d'une erreur 
onError(){
    echo ".. ERR: dans le script ${SCRIPT_NAME}" >> ${LOGERR}
}
trap onError ERR

# Affiche les logs le cas échéant
displayLog(){
    if [ -s "${LOGERR}" ]; then
        echo ".. ERR: Sortie du script ${SCRIPT_NAME}"
        cat "${LOGERR}" 
    fi
    rm -f "${LOGERR}"
}

# Vérifie si les fichiers en entrées sont des fichiers valide
checkFile(){
    file="${1}"
    if [ ! -s "${file}" ]; then
        echo "${file} n'existe pas" >> "${LOGERR}"
        exit 1
    fi
}

# --------------
# INITIALISATION
# --------------

USAGE="USAGE: ${SCRIPT_NAME} <argObligatoire> [argOptionnel]"

# Si pas de premier argument, on sors du script en affichant l'usage
argObligatoire=${1?${USAGE}}

# Si pas de deuxième argument, on fixe une valeur par default
argOptionnel=${2:-"Valeur par défault"}


# -----------
# TRAITEMENTS
# -----------
