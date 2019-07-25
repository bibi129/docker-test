#Common NodeJS Compose file.  It basically runs the whole thing and keeps it running

FROM node:10

WORKDIR /usr/source/app

COPY package*.json ./
#Copy the package that I need (* is a wildcard and grabs everything with that) ./ is the current WORKDIR

RUN npm install

COPY . . 
#Copy everything over

EXPOSE 3000
CMD ["npm", "start"]
