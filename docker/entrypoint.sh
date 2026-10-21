#!/bin/bash
cd /home/container || exit 1

# Le binaire telecharge par l'installation doit etre executable.
[ -f ./BeamMP-Server ] && chmod +x ./BeamMP-Server 2>/dev/null

# Remplace les variables {{VAR}} de la commande de demarrage du panel.
MODIFIED_STARTUP=$(eval echo "$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')")
echo ":/home/container$ ${MODIFIED_STARTUP}"

# exec : le serveur recoit directement les signaux d'arret envoyes par Wings.
exec ${MODIFIED_STARTUP}
