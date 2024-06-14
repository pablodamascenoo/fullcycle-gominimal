FROM golang:alpine as builder

RUN apk add --no-cache upx

WORKDIR /app


COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o main .

RUN upx --best --lzma main

FROM scratch


COPY --from=builder /app/main /main


ENTRYPOINT ["/main"]