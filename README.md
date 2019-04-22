A Docker image with Windscribe (A VPN provider with a 10Go/month offer) and Transmission (a Torrent client)

# Usage
You must have a Windscribe account to use this image. The free offer includes 10Go/month: [Create an account (affiliated link)](https://windscribe.com/?affid=b61tse8h)

```bash
DOWNLOAD_DIR="/home/$USER/Downloads" # TODO adapt this line!
docker run -p9091:9091 --cap-add=NET_ADMIN --device=/dev/net/tun -v$DOWNLOAD_DIR:/var/lib/transmission-daemon/downloads -ti sdenel/docker-windscribe-transmission
```
# See also...
* https://cloud.docker.com/repository/docker/sdenel/docker-windscribe-transmission/general
