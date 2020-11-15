# Build container
FROM golang:1.15-alpine AS build

WORKDIR /workdir

COPY go.mod ./
COPY main.go ./

RUN go build .

# Runner container
FROM alpine:3.12

COPY --from=build /workdir/go-http-hello-world /bin/go-http-hello-world

CMD [ "/bin/go-http-hello-world" ]