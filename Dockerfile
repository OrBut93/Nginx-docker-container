# Use NGINX base image
FROM nginx:latest


# Copy custom configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        default-mysql-client \
    && rm -rf /var/lib/apt/lists/*
    
# Copy your HTML/CSS/JS files to NGINX root directory
COPY index.html /usr/share/nginx/html

# Copy script to fetch data from MySQL
COPY fetch_data.sh /usr/local/bin/fetch_data.sh
RUN chmod +x /usr/local/bin/fetch_data.sh

RUN mkdir /etc/nginx/certs/

# Copy the SSL certificate and key
COPY selfsigned.crt /etc/nginx/certs/selfsigned.crt
COPY selfsigned.key /etc/nginx/certs/selfsigned.key

# Expose port 443 (default for HTTPS)
EXPOSE 443
EXPOSE 80

# Command to run NGINX and the script
CMD ["/bin/bash", "-c", "/usr/local/bin/fetch_data.sh && nginx -g 'daemon off;'"]

# FROM node:14
# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 3000

 # Start script
#  CMD ["/etc/nginx/start.sh"]
# CMD [ "node", "server.js" ]


# # Start NGINX in the foreground
# CMD ["nginx", "-g", "daemon off;"]