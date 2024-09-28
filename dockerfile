FROM nginx

EXPOSE 80

ENTRYPOINT [nginx-debug, '-g', 'daemon off;']
