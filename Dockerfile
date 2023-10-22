FROM fedora:latest
# To test with other operative systems edit FROM and change each installation to support that OS

RUN dnf -y update && dnf install -y cmake && dnf install -y git
RUN sudo dnf install -y curl zip unzip tar

RUN sudo dnf install -y clang

RUN git clone https://github.com/microsoft/vcpkg.git && ./vcpkg/bootstrap-vcpkg.sh
ENV VCPKG_ROOT=/vcpkg

COPY . /app

WORKDIR /app

RUN cmake -S . -B build/

CMD [ "make"]