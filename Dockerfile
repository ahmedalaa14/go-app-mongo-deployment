FROM golang:1.17-alpine3.14 

WORKDIR /app

COPY go.mod .
COPY go.sum .
COPY main.go .

RUN go mod download && \
   go mod verify

RUN go build -o survey .


CMD [ "./survey" ]

EXPOSE  8080