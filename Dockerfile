FROM python:3
USER root


RUN apt-get update
RUN apt-get install autoconf automake libtool curl make g++ unzip

### node
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

### protobuf
WORKDIR /tmp
RUN git clone https://github.com/protocolbuffers/protobuf.git

WORKDIR /tmp/protobuf
RUN git checkout -b v3.15.2 refs/tags/v3.15.2 && \
    git submodule update --init --recursive
RUN ./autogen.sh && ./configure && make && make install && ldconfig

### prepare
RUN pip install mypy-protobuf

### streamlit
WORKDIR /tmp
RUN git clone https://github.com/kamito/streamlit.git
WORKDIR /tmp/streamlit
RUN git checkout devhealthz

### sh
COPY ./package.sh /tmp/streamlit/package.sh

### build
VOLUME /tmp/streamlit/lib/dist


# CMD ["make", "package"]
