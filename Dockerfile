FROM node:10-alpine
RUN mkdir -p /code
WORKDIR /code
ADD . /code
RUN cp /code/.env.example .env
RUN npm install -g -s --no-progress yarn  || :
RUN yarn install
CMD [ "yarn", "dev" ]
EXPOSE 3000