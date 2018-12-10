FROM ubuntu:bionic

RUN apt-get update
RUN apt-get install -y --no-install-recommends ca-certificates cmake ninja-build clang-6.0
RUN apt-get install -y --no-install-recommends python3 git make
RUN rm -rf /var/lib/apt/lists/*
RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-6.0 100 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-6.0

RUN git clone https://github.com/ruslo/hunter

WORKDIR /hunter
RUN git submodule update --init gate

RUN git remote add ci https://github.com/ingenue/hunter
RUN git fetch ci

WORKDIR /

RUN git clone https://github.com/ruslo/polly

ENV PATH /polly/bin:$PATH

WORKDIR /hunter
