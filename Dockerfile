# We use an image where Hugo is already present
FROM hugomods/hugo:exts-0.118.2

# Create a folder for our project
WORKDIR /app

# Copy files into the WORKDIR
COPY . .

# We don't need postinstall scripts because we're using Docker.
# Npm install is necessary if you use a hyas theme like doks.
# If you don't use a hyas theme, npm install doesn't need to be executed.
RUN npm install --ignore-scripts

RUN hugo --baseURL=$BASE_URL

FROM nginx:alpine

# Copy the generated content of the Hugo website
# into the Nginx root directory
COPY --from=0 /app/public /usr/share/nginx/html

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
