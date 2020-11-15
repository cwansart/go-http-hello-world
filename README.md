# Go HTTP Hello World

Go based hello world service.

## Build and run locally

Simply run:

```
$ go run .
```

Or if you want to create an executable you can run:

```
$ go build .
```

## Run with Docker

To create and run the container execute:

```
$ docker build -t cwansart/go-http-hello-world .
$ docker run --rm -p 8080:8080 cwansart/go-http-hello-world
```