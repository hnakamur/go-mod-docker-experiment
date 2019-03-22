From golang:1.12 as builder
WORKDIR /src/app

COPY go.mod ./
RUN go mod download
CMD ["/bin/sh"]
