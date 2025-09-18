# Use Nginx Alpine image
FROM nginx:alpine

# Add maintainer info
LABEL maintainer="kartiklingayat019@gmail.com"

# Copy updated index.html into Nginx folder
COPY index.html /usr/share/nginx/html/index.html

# Expose Nginx port
EXPOSE 80

# ENTRYPOINT to run Nginx in foreground
ENTRYPOINT ["nginx", "-g", "daemon off;"]

# Default CMD (can be overridden)
CMD []
