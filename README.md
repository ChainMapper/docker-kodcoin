# docker-kodcoin
Wallet and daemon for Kodcoin [KOD] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/actinium` and see the wallet starting.

```
Docker Kodcoin wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
KOD: RDScEeb6HYgcTTRELJUQ967PMsAHdJQKjY

Starting KOD daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/Kodcoin.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

KOD: RDScEeb6HYgcTTRELJUQ967PMsAHdJQKjY

# License
MIT, see LICENSE file