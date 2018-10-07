FROM alpine:3.8
MAINTAINER Timothy Clarke <timothy.clarke@serverbox.co.uk>
COPY HelloWorld.http.py /HelloWorld.http.py

RUN set -ex \
  && apk add --no-cache python \
  && chmod +x /HelloWorld.http.py

EXPOSE 8088
ENTRYPOINT ["/HelloWorld.http.py"]
