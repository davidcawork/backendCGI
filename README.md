# backendCGI

Docker Image: Nginx server with Shell script CGI integrated 

## Download:

```git clone <this repo>.git```

## Run:
```bash
	cd backendCGI
	docker build . --no-cache -t backendcgi
	docker run -p80:80 -it backendcgi
``` 
---

## Contents

* ```Dockerfile```:  describe the Docker image
* ```shell```: It's the web page to load in the path **/shell**
* ```default.conf```: nginx config
* ```init```: aux shellscript
