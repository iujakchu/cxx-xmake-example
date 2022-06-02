From archlinux:latest

RUN pacman -Syu --noconfirm \
	&& pacman -Syu --noconfirm  base-devel curl git wget clang mold

COPY . /root/cxx

RUN curl https://sh.rustup.rs -sSf | bash -s -- --default-toolchain 1.59.0 -y
ENV PATH="/root/.cargo/bin:${PATH}" 

WORKDIR /root/cxx
RUN bash <(curl -fsSL https://xmake.io/shget.text)
RUN cd back && cargo build --release
RUN source /root/.xmake/profile && xmake --root
RUN source /root/.xmake/profile && xmake run --root
