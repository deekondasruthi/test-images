FROM nginx:latest

COPY /home/FA-Check/nginx.conf /etc/nginx/conf.d/default.conf

COPY /home/FA-Check/esign /usr/share/nginx/html/

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
