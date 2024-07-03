# BARF Repository

This repository contains multiple services managed through Docker Compose. Below you will find detailed descriptions of each service and their configurations.

## Services

- [Audiobookshelf](#audiobookshelf)
- [Dozzle](#dozzle)
- [Duplicati](#duplicati)
- [Immich](#immich)
- [Plex](#plex)
- [Portainer](#portainer)
- [qBittorrent with Gluetun](#qbit-gluetun)
- [Seafile](#seafile)
- [Watchtower](#watchtower)

---

### [Audiobookshelf](https://github.com/advplyr/audiobookshelf)

Audiobookshelf is a self-hosted audiobook and podcast server.

---

### Dozzle

Dozzle is a real-time log viewer for Docker containers.

---

### Duplicati

Duplicati is a backup software to store encrypted, incremental backups.

---

### Immich

Immich is a self-hosted photo and video backup solution, an alternative in look and feel to Google Photos.

**Environment Variables (.env):**
- Various environment variables defined in the `.env` file.

---

### Plex

Plex is a media server to organize and stream your media collections.

**Environment Variables:**
- `PLEX_CLAIM`: Claim token for Plex server.

---

### Portainer

Portainer is a management tool for Docker environments with a web GUI.

---

### qBittorrent with Gluetun

qBittorrent is a BitTorrent client, and Gluetun is a VPN client that supports Wireguard and OpenVPN. 

**Environment Variables:**
- `VPN_SERVICE_PROVIDER`: VPN service provider for Gluetun.
- `WIREGUARD_PRIVATE_KEY`:
- `WIREGUARD_ADDRESSES`:

---

### Seafile

Seafile is a file hosting software system, an alternative to Dropbox/OneDrive/GoogleDrive.

---

### Watchtower

Watchtower automatically updates running Docker containers.

