FROM abaez/luarocks:openresty

RUN luarocks install lapis

# Make server directory
RUN mkdir /app
WORKDIR /app

ENV LAPIS_OPENRESTY "/opt/openresty/nginx/sbin/nginx"
ENV LAPIS_ENVIRONMENT "development"

VOLUME /app

CMD ["/usr/local/bin/lapis", "server", "$LAPIS_ENVIRONMENT"]
