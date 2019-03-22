From golang:1.12 as builder
WORKDIR /src/app

COPY go.mod go.sum ./
RUN go mod download
COPY main.go ./
CMD ["/bin/sh"]
