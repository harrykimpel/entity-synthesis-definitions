FROM node:14.18-alpine
WORKDIR /scripts
VOLUME  /definitions
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
CMD ["npm", "run", "sanitize-dashboards"]
