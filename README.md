## Run

#we can run this as a container on same registry box or any other box with access to registry box
docker run -e CENTRAL_REGISTRY=registry_to_push_to -it mangirdas/image-cacher 

## Build

docker run -e CENTRAL_REGISTRY=registry_to_push_to -it mangirdas/image-cacher 

## Environment variables

```
OCP_VERSION=${OCP_VERSION:-"3.4.0"}
OCP_VERSION_LONG=${OCP_VERSION_LONG:-"3.4.1.5"}
OCP_VERSION_SHORT=${OCP_VERSION_SHORT:-"3.4"}
REGISTRY="registry.access.redhat.com"
CENTRAL_REGISTRY=${CENTRAL_REGISTRY:-"localhost:5000"}
```

