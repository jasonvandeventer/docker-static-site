# Stage 1: Build assets
FROM node:18-alpine3.20 AS builder

RUN apk update && apk upgrade --no-cache

WORKDIR /app
COPY . .
#

# Stage 2: Serve with Nginx
FROM nginx:1.25.1-alpine AS runtime
LABEL maintainer="Jason jason@vanfreckle.com"

RUN apk update \
	&& apk upgrade --no-cache \
	&& rm -rf /var/cache/apk/*

COPY --from=builder /app /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
