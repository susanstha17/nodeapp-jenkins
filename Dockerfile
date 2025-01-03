# Specify the base image

FROM node:20-alpine3.17

WORKDIR /usr/app

# Copy package.json and install dependencies

COPY ./package.json ./
RUN npm install


#Copy everything else. This approach will not copy everything if dependencies dont change.

COPY ./ ./

EXPOSE 8080

# Start command

CMD [ "npm", "start" ]
