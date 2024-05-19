FROM node:20.11.0-alpine3.19
WORKDIR '/app'
RUN npm install --global pm2
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

# Expose the listening port
EXPOSE 3000

# Run npm start script with PM2 when container starts
# CMD [ "pm2-runtime", "npm", "--", "run", "dev" ] # mapping between local dir and directories inside container. Command: docker run -v $(pwd):/app -v /app/node_modules ...
CMD [ "pm2-runtime", "npm", "--", "start" ]
