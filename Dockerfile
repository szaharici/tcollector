FROM python:2.7-alpine

RUN apk --no-cache add --virtual=.build-dep \
      build-base \
    && apk --no-cache add bash libzmq \
    && apk del .build-dep

# COPY STUFF
COPY * /tcollector/
COPY collectors/0/* /tcollector/collectors/0/
COPY collectors/etc/* /tcollector/collectors/etc/
#
RUN chmod +x /tcollector/entrypoint.sh

# Start 
ENTRYPOINT ["/tcollector/entrypoint.sh"] 
