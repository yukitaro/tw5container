#syntax=docker/dockerfile:1
FROM node:18-alpine

ENV TS_PORT=8080

WORKDIR /tiddlywiki

RUN npm install tiddlywiki -g
RUN tiddlywiki kennyswiki --init server

#RUN chmod -R 777 /usr/local/lib/node_modules/tiddlyserver/datafolder

# Add init-and-run script
#ADD tiddlyweb_host /tiddlyweb_host_template
#ADD init-and-run-wiki.sh /usr/local/bin/init-and-run-wiki.sh

#CMD ["/usr/local/bin/init-and-run-wiki.sh"]
ADD ./.tw/kennyswiki/tiddlywiki.info /tiddlywiki/kennyswiki/tiddlywiki.info
CMD tiddlywiki kennyswiki --listen host=0.0.0.0
EXPOSE 8080
#COPY ./kennyswiki ./kennyswiki

# COPY package.json package.json
# COPY package-lock.json package-lock.json

#COPY --chmod=0555 --chown=root:root init-and-run /usr/local/bin/init-and-run

#FROM scratch

#COPY --from=build / /

#CMD [ "node", "./boot/boot.js" ]

#ADD tiddlyweb_host /tiddlyweb_host_template
#ADD init-and-run-wiki /usr/local/bin/init-and-run


# CMD ["node", "./tiddlywiki.js"]
