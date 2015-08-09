# hello-sinatra
## Goal
Build up distributed web application
Dockerized Sinatra

## Prerequisite
Docker

## Getting Started
[Sinatra](www.sinatrarb.com) is web application framework for distributed web applications.

Get repository from GitHub
```
git clone https://github.com/MasashiTeruya/hello-sinatra.git && cd hello-sinatra
```

Build Docker image
```
docker build -t hello-sinatra .
```
Make sure hello-sinatra image exists
```
$ docker images hello-sinatra
REPOSITORY          TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
hello-sinatra       latest              7131cb10a252        31 minutes ago      712.8 MB
```
Execute bundle install with docker
```
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby bundle install
```
Run hello-sinatra image and publish HTTP 8080 port
```
docker run --rm -it --name hello-sinatra-sample -p=8080:4567 hello-sinatra
```
See how it works
```
curl http://localhost:8080/version
```
