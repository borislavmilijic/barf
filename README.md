# BARF Media Center

This repository contains multiple services managed through Docker Compose. Below you will find detailed descriptions of each service and their configurations. The main idea of this repo is to have those services ready to go in a matter of minutes, but also to recycle them anytime. Since multiple users in my household (and beyond) are using my immich and seafile server, I have exposed those services to the internet using tailscale and https securely using their [funnel](https://tailscale.com/kb/1223/funnel) service. My environment for running these services contains a Mac-Mini M2 running Docker + Synology DS413j. Every service used here (except the VPN Provider ofc - Mullvad in my case) is free of any charge. For all of the *arr services please read the [bible](https://trash-guides.info/).

## Services

- [Audiobookshelf](#audiobookshelf)
- [Dozzle](#dozzle)
- [Duplicati](#duplicati)
- [Immich](#immich)
- [Plex](#plex)
- [Portainer](#portainer)
- [Radarr](#radarr)
- [Sonarr](#sonarr)
- [Readarr](#readarr)
- [Prowlarr](#prowlarr)
- [Flaresolverr](#flaresolverr)
- [Decluttarr](#decluttarr)
- [qBittorrent with Gluetun](#qbit-gluetun)
- [Seafile](#seafile)

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
- Various environment variables defined in the `.env` file. You can find documentation for all the supported env variables [here](https://immich.app/docs/install/environment-variables).

---

### [Plex](https://github.com/linuxserver/docker-plex)

Plex is a media server to organize and stream your media collections.

**Environment Variables:**
- `PLEX_CLAIM`: Claim token for Plex server.

---

### [Portainer](https://github.com/portainer/portainer)

Portainer is a management tool for Docker environments with a web GUI.

---

### [Radarr](https://github.com/Radarr/Radarr)

Radarr is a movie collection manager for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new movies and will interface with clients and indexers to grab, sort, and rename them. It can also be configured to automatically upgrade the quality of existing files in the library when a better quality format becomes available.

---

### [Sonarr](https://github.com/Sonarr/Sonarr)

Sonarr is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

---

### [Readarr](https://github.com/Readarr/Readarr)

Readarr is an ebook and audiobook collection manager for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new books from your favorite authors and will grab, sort, and rename them.

---

### [Prowlarr](https://github.com/Prowlarr/Prowlarr)

Prowlarr is an indexer manager/proxy built on the popular *arr .net/reactjs base stack to integrate with your various PVR apps. Prowlarr supports management of both Torrent Trackers and Usenet Indexers. It integrates seamlessly with Lidarr, Mylar3, Radarr, Readarr, and Sonarr offering complete management of your indexers with no per app Indexer setup required (they do it all).

---

### [Flaresolverr](https://github.com/FlareSolverr/FlareSolverr)

FlareSolverr is a proxy server to bypass Cloudflare and DDoS-GUARD protection (needed when adding indexers to #prowlarr).

---

### [Decluttarr](https://github.com/ManiMatter/decluttarr)

Decluttarr keeps the radarr & sonarr & lidarr & readarr & whisparr queue free of stalled / redundant downloads

**Environment Variables:**
- `QBITTORRENT_URL`: URL to qbit web-ui
- `QBITTORRENT_PASSWORD`: qbit password
- `READARR_KEY`: API-Key for (#readarr)
- `SONARR_KEY`: API-Key for (#sonarr)
- `RADARR_KEY`: API-Key for (#radarr)

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

### Conclusion

I would like to extend my heartfelt thanks to all the developers and maintainers of the projects included in this setup. Your hard work and dedication make it possible for enthusiasts like myself to build and deploy such amazing tools. Your contributions to the open-source community are truly invaluable.

Please note that I am not a developer or maintainer for any of the services included in this project. This setup is strictly for personal use and should be considered as such. Any issues or questions related to the individual services should be directed to their respective repositories and maintainers.

Thank you for your understanding!

Feel free to suggest improvements and best practices or simply point out mistakes.

---

**Disclaimer:** This project is for personal use only. I am not responsible for any issues that may arise from the use of this setup. Please use it at your own discretion.