FROM python:3-alpine

RUN mkdir /data
VOLUME /data
COPY www/* /data
EXPOSE 8080

WORKDIR /data

CMD ["python", "-m" , "http.server", "8080"]
