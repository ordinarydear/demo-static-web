# Build stage
FROM golang:1.22.6-alpine AS build
WORKDIR /src
COPY . .
ENV HUGO_ENVIRONMENT=production
RUN hugo --minify

# Runtime stage
FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html
