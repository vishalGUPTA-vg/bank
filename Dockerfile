#build stage 
FROM golang:1.19-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o main main.go

#run
FROM alpine 
WORKDIR /app
COPY --from=builder /app/main .


EXPOSE 8080
CMD ["/app/main"]