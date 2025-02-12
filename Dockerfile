FROM ubuntu AS dioxus
RUN apt-get -qq update \
    && apt-get -y -qq install libwebkit2gtk-4.1-dev \
    build-essential \
    curl \
    wget \
    file \
    libxdo-dev \
    libssl-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN echo $HOME \
    && ls -al $HOME/.cargo/ \
    && cat $HOME/.cargo/env \
    && chmod +x $HOME/.cargo/env \
    && echo $PATH \
    && . $HOME/.cargo/env \
    && echo $PATH \
    && export PATH=$HOME/.cargo/bin/:$PATH \
    && echo $PATH

RUN cargo install dioxus-cli
ENV PATH="/root/.cargo/bin/:$PATH"
