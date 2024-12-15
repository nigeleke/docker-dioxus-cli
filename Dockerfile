FROM rust:alpine AS dioxus
RUN apk add --no-cache gcc musl-dev libc-dev openssl-dev openssl-libs-static libgcc libstdc++ pkgconfig \
    && cargo install dioxus-cli
