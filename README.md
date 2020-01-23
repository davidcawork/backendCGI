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
* ```main.html```: index web page

sudo apt-get -y install \
git build-essential libssl-dev \
zlib1g-dev yasm pkg-config \
libgmp-dev libpcap-dev libbz2-dev \
ocl-icd-opencl-dev opencl-headers \
pocl-opencl-icd


 tar xvfz \
SecLists/Passwords/Leaked-Databases/ \
rockyou.txt.tar.gz
