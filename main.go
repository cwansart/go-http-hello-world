package main

import (
	"fmt"
	"log"
	"net/http"
)


func main() {
	http.HandleFunc("/", handleRoot)
	log.Fatal(http.ListenAndServe(":8080", nil))
}

func handleRoot(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "Hello World")
}