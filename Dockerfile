FROM debian:bookworm-slim

ARG USERNAME=user

RUN apt-get update -y \
  && DEBIAN_FRONTEND=noninteractive \
  apt-get install -y --no-install-recommends \
  pulseaudio \
  alsa-utils \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash $USERNAME

WORKDIR /home/$USERNAME/workspace

USER $USERNAME

ENTRYPOINT ["/bin/bash"]
