FROM alpine

# Update packages and install Nginx
RUN apk update && apk add nginx

# Copy Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 2226

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
