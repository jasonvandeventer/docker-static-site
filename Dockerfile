# Dockerfile

# If no build is needed, skip Node stage
FROM nginx:1.25.1-alpine
LABEL maintainer="Jason jason@vanfreckle.com"

# Copy static files
COPY index.html styles.css /usr/share/nginx/html/

# Expose port
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
