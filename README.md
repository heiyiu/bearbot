# bearbot

Bearbot is a discord bot utilizing discord.py. Github Action will package the application into an image (accessible via the packages section on the left) 

## Installation
Docker or Podman

## Usage
For downloading the image:
```
docker pull ghcr.io/heiyiu/bearbot:main
```
For running the image in the background:
```
docker run -e DISCORD_BOT_TOKEN=YOURTOKEN -d -it -p 80:80 ghcr.io/heiyiu/bearbot:main
```
