FROM alpine:3.7

# Basic tools
RUN apk add --no-cache curl bash git tar sed

# xsltproc and xmllint
RUN apk add --no-cache libxslt libxml2-utils

# JSON tools
RUN apk add --no-cache jq

COPY check /opt/resource/check
COPY in    /opt/resource/in
COPY out   /opt/resource/out

RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check
