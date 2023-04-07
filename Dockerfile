# Use the official Nginx Alpine image as a base
FROM nginx:alpine

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY tmphosts.conf /etc/nginx/nginx.conf

# Expose ports for HTTP and HTTPS
EXPOSE 80 443
