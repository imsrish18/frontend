FROM node:15.13-alpine
WORKDIR /app
ENV PATH="./node_modules/.bin:$PATH"
COPY package.json .
RUN npm install 

COPY . .

EXPOSE 3000
RUN npm run build
CMD ["npm","start"]






