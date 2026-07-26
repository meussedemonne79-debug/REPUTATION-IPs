FROM nginx:alpine
RUN apk add --no-cache apache2-utils
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN htpasswd -cb /etc/nginx/.htpasswd admin OrangeSoc2024!
EXPOSE 80
