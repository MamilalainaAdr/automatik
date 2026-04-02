#!/usr/bin/env bash
set -e

echo "Mise à jour des dépôts"
sudo apt update

echo "Ajout du dépôt officiel"
curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash

echo "Installation de Crowdsec"
sudo apt install crowdsec -y

echo "Activation du service et démarrage"
sudo systemctl enable crowdsec && sudo systemctl start crowdsec

echo "Vérification du status"
sudo systemctl status crowdsec
