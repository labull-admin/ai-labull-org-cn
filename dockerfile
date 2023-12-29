# Use the official Nginx image as a parent image
FROM --platform=linux/amd64 nginx 

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file into the container
COPY /ngnix/mydomain.conf /etc/nginx/conf.d/

# Copy the directory with your built web application to the appropriate location for Nginx
COPY /ai_labull_org_cn/build/web /usr/share/nginx/html

# Expose port 80 and 443 for HTTP and HTTPS requests
EXPOSE 80

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]
