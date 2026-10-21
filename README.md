# BeamMP Egg For Pterodactyl

## This is an updated version from **[VanishedMC](https://github.com/VanishedMC/Pterodactyl-BeampMP-Egg)**

## Now working with version 3.x.x of BeamMP server (Last Tested Version 3.0.1)

## Variables (onglet Startup)

| Variable | Rôle |
|---|---|
| `NAME`, `DESCRIPTION`, `TAGS` | affichage dans la liste des serveurs BeamMP |
| `AUTH` | clé du serveur, à créer sur https://keymaster.beammp.com (obligatoire) |
| `MAP` | carte, ex. `/levels/west_coast_usa/info.json` |
| `MAXPLAYERS`, `MAXCARS` | limites de joueurs et de véhicules par joueur |
| `PRIVATE`, `ALLOWGUESTS`, `LOGCHAT`, `DEBUG` | `true` / `false` |
| `VERSION` | version installée à la (ré)installation : `latest` ou un tag, ex. `v3.9.3` |

Ces valeurs sont réécrites dans `ServerConfig.toml` à chaque démarrage. Le port vient de l'allocation principale du serveur.

**Mettre à jour BeamMP** : régler `VERSION` (ou laisser `latest`) puis *Reinstall Server*. La réinstallation remplace uniquement le binaire : la configuration et le dossier `Resources` sont conservés.

## Image Docker

L'egg utilise l'image `ghcr.io/yperrr/pterodactyl-beammp-egg:latest`, construite depuis le dossier [`docker/`](docker/) (Debian 12, Lua 5.3, OpenSSL 3) :

L'image est construite et publiée automatiquement par GitHub Actions ([`.github/workflows/docker.yml`](.github/workflows/docker.yml)) pour `amd64` et `arm64` : à chaque modification de `docker/`, chaque lundi (correctifs de sécurité Debian), ou à la demande depuis l'onglet *Actions*. Tags publiés : `latest`, la date (`AAAA-MM-JJ`) et `sha-<commit>`.

Construction manuelle si besoin :

```bash
docker build -t ghcr.io/yperrr/pterodactyl-beammp-egg:latest docker/
docker push ghcr.io/yperrr/pterodactyl-beammp-egg:latest
```

Le paquet doit rester **public** sur GHCR : les nœuds Wings le téléchargent sans authentification.
