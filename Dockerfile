FROM nginx:1.19.5

# Expose port 80
EXPOSE 80

# Copy the index.html file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Copy the images folder to the Nginx HTML directory
COPY images/ /usr/share/nginx/html/images/

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]