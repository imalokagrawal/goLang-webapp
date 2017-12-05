FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go get github.com/gin-gonic/gin
RUN go get github.com/go-martini/martini
RUN go build -o main . 
CMD ["/app/main"]