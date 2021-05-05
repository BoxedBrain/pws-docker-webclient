FROM nginx:latest

ENV APP_HOME=/app
RUN mkdir -p ${APP_HOME}
ARG PWS_SERVER=passwordsafe

WORKDIR $APP_HOME

RUN apt-get update && apt-get install -y \
    unzip \
    sed

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
RUN sed -i "s/%PWS_SERVER%/${PWS_SERVER}/g" /etc/nginx/conf.d/default.conf

COPY ./certificates ${APP_HOME}/certificates
COPY ./WebClient.zip ${APP_HOME}

RUN unzip WebClient.zip -d WebClient && rm WebClient.zip

EXPOSE 80 443