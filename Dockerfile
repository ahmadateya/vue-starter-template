FROM node:16.15.0-alpine

# create destination directory
RUN mkdir -p /app
WORKDIR /app

# copy the app, note .dockerignore
COPY . /app/
RUN npm install

# build necessary, even if no static files are needed,
# since it builds the server as well
#RUN npm run build

# expose 3000 on container
EXPOSE 3000