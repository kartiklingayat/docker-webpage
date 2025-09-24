# Use Nginx Alpine image
FROM nginx:alpine

# Add maintainer info
LABEL maintainer="kartiklingayat019@gmail.com"

# Set working directory
WORKDIR /usr/share/nginx/html

# Accept a build ARG for custom HTML (optional)
ARG HTML_FILE=index.html

# Copy updated index.html into Nginx folder
COPY ${HTML_FILE} ./index.html

# Expose Nginx port
EXPOSE 80

# Add volume for persistent html content
VOLUME ["/usr/share/nginx/html"]

# Add a non-root user for security
RUN adduser -D dockeruser
USER dockeruser

# ENTRYPOINT to run Nginx in foreground
ENTRYPOINT ["nginx", "-g", "daemon off;"]

# Default CMD (empty, can be overridden)
CMD []
