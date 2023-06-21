FROM golang

WORKDIR /cmd/main
COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .
CMD ["go", "run", "cmd/main.go"]