From golang:1.12 as builder
WORKDIR /src/app

COPY go.mod go.sum ./
RUN go mod download
COPY hello.go hello_test.go ./
RUN go get rsc.io/sampler
CMD ["/bin/sh"]
