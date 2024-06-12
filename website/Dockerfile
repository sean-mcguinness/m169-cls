FROM nginx
# Kopiere die HTML-Datei und das Skript in den Container
COPY ./index.html /usr/share/nginx/html
COPY ./replace_links.sh /replace_links.sh

# Berechtigungen für das Skript setzen
RUN chmod +x replace_links.sh
RUN chown nginx:nginx replace_links.sh
ENTRYPOINT ["/replace_links.sh"]
LABEL org.opencontainers.image.source https://github.com/sean-mcguinness/m169-cls
