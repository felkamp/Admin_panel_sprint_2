FROM nginx:1.21-alpine

RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx
COPY admin_panel.conf /etc/nginx/conf.d