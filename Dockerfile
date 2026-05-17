FROM nginx:alpine

COPY market_pulse.html /usr/share/nginx/html/index.html
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]