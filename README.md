# docker medusa

This is a Dockerfile to set up "pyMedusa" - (https://pymedusa.com/)

The build is done automatically by docker hub, but if you need to build it,
follow the below instructions.

Build from docker file

```
git clone git@github.com:iggy/docker-medusa.git
cd docker-medusa
docker build -t medusa .
```

docker run --restart=always -d -h *your_host_name* -v /*your_config_location*:/config  -v /*your_videos_location*:/data -p 8081:8081 medusa
