# BeamMP Egg For Pterodactyl

## This is an updated version from **[VanishedMC](https://github.com/VanishedMC/Pterodactyl-BeampMP-Egg)**

## Now working with version 3.x.x of BeamMP server (Last Tested Version 3.0.1)

## Image Docker

L'egg utilise l'image `ghcr.io/yperrr/pterodactyl-beammp-egg:latest`, construite depuis le dossier [`docker/`](docker/) (Debian 12, Lua 5.3, OpenSSL 3) :

```bash
docker build -t ghcr.io/yperrr/pterodactyl-beammp-egg:latest docker/
docker push ghcr.io/yperrr/pterodactyl-beammp-egg:latest
```

Le paquet doit rester **public** sur GHCR : les nœuds Wings le téléchargent sans authentification.
