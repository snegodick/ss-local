## Shadowsocks client (ss-local) in docker container
### Docker build
    build -t ss-local .
### Docker run
    docker run --name ss-local-1 --restart always \
    -e SS_SERVER=server.com \
    -e SS_PORT=18499 \
    -e METHOD=aes-256-cfb \
    -e KEY=Passw0rd1560 \
    -p 1234:1080 \
    -d ss-local


