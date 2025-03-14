FROM node
LABEL app=gda-app-1
WORKDIR /home/ubuntu/NodeApp
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD node ./bin/www
