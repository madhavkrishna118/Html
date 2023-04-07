# Use nginx alpine image as base image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy website files to container
COPY 2000 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
