# Use the official Nginx image as the base image
FROM nginx

# Copy the HTML files and assets to the Nginx default HTML directory
COPY html /usr/share/nginx/html

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx when the container is run. The daemon off configuration option is used to run Nginx in the 
# foreground instead of as a background daemon process. By setting daemon off, Nginx will start as the main 
# process within the Docker container and stay in the foreground, which allows the container to remain 
# running and prevents it from exiting immediately

CMD ["nginx", "-g", "daemon off;"]
