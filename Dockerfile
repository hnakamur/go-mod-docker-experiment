From golang:1.12 as builder
WORKDIR /src/app

COPY hello.go hello_test.go ./
RUN go test
CMD ["/bin/sh"]
