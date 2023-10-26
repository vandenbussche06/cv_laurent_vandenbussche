#!/bin/bash

# Récupérer le message de commit passé en argument
commit_message="$1"

# Vérifier si un message a été passé en argument
if [ -z "$commit_message" ]
then
    echo "Veuillez fournir un message de commit."
    exit 1
fi

# Ajouter tous les fichiers modifiés au commit
git add -A

# Effectuer le commit avec le message passé en argument
git commit -m "$commit_message"

# Pousser les modifications sur GitHub
git push origin master
