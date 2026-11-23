FROM node:26

WORKDIR /app

# setup runtime
COPY package.json .
COPY package-lock.json .
RUN npm i

# copy app
COPY public/ public/
COPY views/ views/
COPY main.js .

ENV PORT=3000
ENV INSTANCE_NAME=""
ENV INSTANCE_HASH=""

EXPOSE ${PORT}

SHELL ["/bin/sh", "-c"]
ENTRYPOINT ["node", "main.js" ]



