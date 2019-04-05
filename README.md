# docker sickrage

This is a Dockerfile to set up "SickRage" - (https://sickrage.github.io/)

Build from docker file

```
git clone git@github.com:iggy/docker-medusa.git
cd docker-medusa
docker build -t medusa .
```

docker run --restart=always -d -h *your_host_name* -v /*your_config_location*:/config  -v /*your_videos_location*:/data -p 8081:8081 medusa
