# BARF Media Center

This repository contains multiple services managed through Docker Compose. Below you will find detailed descriptions of each service and their configurations. The main idea of this repo is to have those services ready to go in a matter of minutes, but also to recycle them anytime.

## Services

- [Audiobookshelf](#audiobookshelf)
- [Dozzle](#dozzle)
- [Duplicati](#duplicati)
- [Immich](#immich)
- [Plex](#plex)
- [Portainer](#portainer)
- [qBittorrent with Gluetun](#qbit-gluetun)
- [Seafile](#seafile)
- [Radarr]()
- [Sonarr]()
- [Readarr]()
- [Prowlarr]()
- [Flaresolverr]()
- [Decluttarr]()

---

### [Audiobookshelf](https://github.com/advplyr/audiobookshelf)

Audiobookshelf is a self-hosted audiobook and podcast server.

---

### [Dozzle](https://github.com/amir20/dozzle)

Dozzle is a small lightweight application with a web based interface to monitor Docker logs. It doesn’t store any log files. It is for live monitoring of your container logs only.

---

### [Duplicati](https://github.com/duplicati/duplicati)

Duplicati is a free, open source, backup client that securely stores encrypted, incremental, compressed backups on cloud storage services and remote file servers. It works with almost every provider.

---

### [Immich](https://github.com/immich-app/immich) with [Tailscale](https://github.com/tailscale/tailscale)

Immich is a self-hosted photo and video backup solution, an alternative in look and feel to Google Photos.

Tailscale is a private network tool that makes VPN, DNS, TLS, Proxying work even for dummies. Access your apps anywhere securely without exposing them to the internet - all that with a nice GUI.

**Environment Variables (.env):**
- Various environment variables defined in the `.env` file.

---

### [Plex](https://github.com/linuxserver/docker-plex)

Plex is a media server to organize and stream your media collections.

**Environment Variables:**
- `PLEX_CLAIM`: Claim token for Plex server.

---

### [Portainer](https://github.com/portainer/portainer)

Portainer is a management tool for Docker environments with a web GUI.

---

### [qBittorrent](https://github.com/linuxserver/docker-qbittorrent) with [Gluetun](https://github.com/qdm12/gluetun)

qBittorrent is a BitTorrent client, and Gluetun is a VPN client that supports Wireguard and OpenVPN. Integration between the two allows for anonymous torrenting.

**Environment Variables:**
- `VPN_SERVICE_PROVIDER`: VPN service provider for Gluetun.
- `WIREGUARD_PRIVATE_KEY`: Provided by your VPN Provider
- `WIREGUARD_ADDRESSES`: Provided by your VPN Provider

---

### [Seafile](https://github.com/haiwen/seafile) with [Tailscale](https://github.com/tailscale/tailscale)

Seafile is a file hosting software system, an alternative to Dropbox/OneDrive/GoogleDrive.

---

### [Watchtower](https://github.com/containrrr/watchtower)

Watchtower automatically checks for new images and updates running Docker containers on a daily bases.

---

### Soon TBA: [Radarr](),[Sonarr](),[Readarr](),[Prowlarr](),[Flaresolverr](),[Decluttarr]()