# Use Nginx Alpine image
FROM nginx:alpine

# Add maintainer info
LABEL maintainer="Kartik Lingayat <your-email@example.com>"

# Copy updated index.html into Nginx folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
