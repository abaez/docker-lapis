FROM 3scale/openresty

RUN luarocks install lapis

# Make server directory
RUN mkdir /server
WORKDIR /server
RUN lapis new --lua

ENV LAPIS_OPENRESTY "/opt/openresty/nginx/sbin/nginx"
ENV LAPIS_ENVIRONMENT "development"

EXPOSE 8080
VOLUME /server

CMD ["/usr/local/bin/lapis", "server", "$LAPIS_ENVIRONMENT"]
