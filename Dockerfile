FROM ubuntu AS dioxus
RUN apt-get -qq update \
    && apt-get -y -qq install libwebkit2gtk-4.1-dev
    #   build-essential \
    #   curl \
    #   wget \
    #   file \
    #   libxdo-dev \
    #   libssl-dev \
    #   libayatana-appindicator3-dev \
    #   librsvg2-dev \
    # && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    # && . "$HOME/.cargo/env" \
    # && pwd \
    # && echo $PATH
    # && cargo install dioxus-cli
ENV PATH="/root/.cargo/bin/:$PATH"
