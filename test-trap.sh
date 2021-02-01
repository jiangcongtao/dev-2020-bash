# Testing Commands for trap exploration

## Build and run docker container
```
docker build -t bashtrap .  -f Dockerfile

docker run -it --rm bashtrap
```

## Issue Signal
```
docker kill -s INT <container_id>
docker kill -s HUP <container_id>
docker kill -s SIGTERM <container_id>
docker kill -s EXIT <container_id>
docker kill -s QUIT <container_id>
docker kill -s kill <container_id>
docker kill -s QUIT <container_id>
```
