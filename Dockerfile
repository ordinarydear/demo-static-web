# Build stage
FROM klakegg/hugo:0.128.0-ext-alpine AS builder
WORKDIR /src
COPY . .
ENV HUGO_ENVIRONMENT=production
RUN hugo --minify

# Runtime stage
FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html
