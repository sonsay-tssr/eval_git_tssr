#!/bin/bash

echo "Où voulez-vous enregistrer le projet ? (Chemin absolu ex : /chemin/vers/dossier)"
read directory

echo "Quel est le nom de votre projet ?"
read project

cd "$directory" || { echo "Le dossier spécifié est introuvable."; exit 1; }

mkdir -p "$project"
cd "$project" || { echo "Impossible de créer ou d'accéder au dossier projet."; exit 1; }

touch index.html style.css readme.md

echo "Le projet a été ajouté."