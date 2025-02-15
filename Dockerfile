FROM nginx:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget unzip -y
WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/sites-enabled/
ADD https://bootstrapmade.com/content/templatefiles/Logis/Logis.zip
RUN unzip Logis.zip
RUN mv Logis/* .
RUN rm -rf Logis Logis.zip
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
