# Prepare a docker image and push it to gitlab

> Example with pypi Container Registry
> 
> https://gitlab.com/halia-ca/pypi/container_registry

> Info: Configure a Personal Access Tokens 
> 
> https://gitlab.com/-/profile/personal_access_tokens
## Prepare
- Go to your folder that contains the Dockerfile
- Create a Dockerfile if it does not exist

## Log to docker
```shell
sudo docker login registry.gitlab.com
```

## Build the image
```shell
sudo docker build -t registry.gitlab.com/halia-ca/pypi .
```

## Push the image
```shell
sudo docker push registry.gitlab.com/halia-ca/pypi
```

## Use the image
```shell
registry.gitlab.com/halia-ca/pypi:latest
```