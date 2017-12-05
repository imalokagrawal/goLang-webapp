FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go install github.com/gin-gonic/gin
RUN go install github.com/go-martini/martini
RUN go build -o main . 
CMD ["/app/main"]