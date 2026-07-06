FROM rust:alpine AS builder
RUN apk add --no-cache build-base
WORKDIR /app
COPY . .
RUN cargo build --release

FROM alpine:latest
COPY --from=builder /app/target/release/steinbockschraubtermine /usr/local/bin/steinbockschraubtermine

CMD ["steinbockschraubtermine"]
