FROM ubuntu AS dioxus
RUN apt-get update \
    && apt-get -y install libwebkit2gtk-4.1-dev \
      build-essential \
      curl \
      wget \
      file \
      libxdo-dev \
      libssl-dev \
      libayatana-appindicator3-dev \
      librsvg2-dev \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > sh.rustup.rs \
    && cat sh.rustup.rs \
    && sh sh.rustup.rs --yes \
    && cargo install dioxus-cli
