FROM node:18-alpine AS builder


WORKDIR /app

COPY index.html app.js ./

FROM nginx:alpine AS production


RUN rm -rf /usr/share/nginx/html/*


COPY --from=builder /app/index.html /usr/share/nginx/html/
COPY --from=builder /app/app.js /usr/share/nginx/html/


COPY default.conf /etc/nginx/conf.d/default.conf


RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d && \
    touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid


USER nginx


EXPOSE 80


CMD ["nginx", "-g", "daemon off;"] 
