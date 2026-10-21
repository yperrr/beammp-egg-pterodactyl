# Image d'execution du serveur BeamMP pour Pterodactyl.
# Publiee sous ghcr.io/yperrr/pterodactyl-beammp-egg.
FROM debian:12-slim

LABEL org.opencontainers.image.source="https://github.com/yperrr/beammp-egg-pterodactyl" \
      org.opencontainers.image.description="Image d'execution du serveur BeamMP pour Pterodactyl" \
      org.opencontainers.image.licenses="MIT"

# Bibliotheques requises par BeamMP-Server 3.x (Lua 5.3, OpenSSL 3).
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      ca-certificates curl tar liblua5.3-0 libssl3 \
 && rm -rf /var/lib/apt/lists/* \
 && useradd --create-home --home-dir /home/container --shell /bin/bash container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY --chmod=755 entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
