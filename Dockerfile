# Use a lightweight base image
FROM nginx:alpine

# Copy the static HTML files to the nginx default directory
COPY ./path/to/html/files /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
