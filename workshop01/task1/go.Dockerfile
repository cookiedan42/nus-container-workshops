FROM golang:1.27 AS builder

WORKDIR /src

COPY go.* .
COPY main.go . 

RUN CGO_ENABLED=0 go build -o app .

FROM debian:bookworm

WORKDIR /app

COPY --from=builder /src/app .
COPY public/ public/
COPY templates/ templates/


ENV PORT="3000" 
ENV INSTANCE_NAME="" 
ENV INSTANCE_HASH=""


EXPOSE ${PORT}  

SHELL ["/bin/sh","-c"]
ENTRYPOINT ./app