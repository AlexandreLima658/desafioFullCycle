FROM golang as build

WORKDIR /cmd/main
COPY go.mod go.sum ./

RUN go mod download
COPY . .    
RUN cd cmd && CGO_ENABLED=0 GOOS=linux go build -o api main.go 


FROM scratch
WORKDIR /app
COPY --from=build /cmd/main/cmd/api .

CMD ["./api"]
