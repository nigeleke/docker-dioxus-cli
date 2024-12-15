# docker-dioxus-cli

`rust:alpine` + `dioxus-cli` built for `amd64` and `arm64`.

## Background

`docker` builds for `dioxus-cli` (`arm64` especially) take a long time to complete.

This project performs a cross-platform build of dioxus-cli and makes them available at `nigeleke/docker-dioxus-cli`.

## Usage

This example is for a `web` only application.

```Dockerfile
FROM nigeleke/docker-dioxus-cli as builder
WORKDIR /usr/src/app
COPY . .
RUN dx bundle

FROM nginx:alpine
WORKDIR /usr/share/nginx/html/
COPY --from=builder /usr/src/app/target/dx/<app>/release/web/public/ .
EXPOSE 80
```

```bash
$ docker buildx build --platform=linux/amd64,linux/arm64 -t <user>/<app> .
```
