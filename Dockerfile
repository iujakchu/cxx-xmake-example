From archlinux:latest

RUN pacman -Syu --noconfirm \
	&& pacman -Syu --noconfirm  base-devel curl git wget clang mold

COPY . /root/cxx

RUN curl https://sh.rustup.rs -sSf | bash -s -- --default-toolchain 1.59.0 -y
ENV PATH="/root/.cargo/bin:${PATH}" 

# you may need to comment this if you are not in China
COPY config /root/.cargo/config

WORKDIR /root/cxx
RUN bash <(curl -fsSL https://xmake.io/shget.text)
RUN xmake --root
