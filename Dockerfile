FROM nginx 
ARG DEBIAN_FRONTEND=noninteractive
CMD mkdir /usr/share/backendCGI
COPY shell /usr/share/backendCGI/
COPY py /usr/share/backendCGI/
COPY default.conf /etc/nginx/conf.d/default.conf
COPY init /
RUN apt-get update && apt-get install -yq fcgiwrap python3.6
RUN chmod +x /usr/share/backendCGI/shell 
RUN chmod +x /usr/share/backendCGI/py 
CMD chown www-data:www-data /usr/share/backendCGI/shell
RUN chmod +x /init 
#RUN ./init
ENTRYPOINT ["/bin/bash", "-c", "/init"]
#ENTRYPOINT ["/usr/share/backendCGI/init"]
#ENTRYPOINT ["/usr/share/backendCGI/init"]
