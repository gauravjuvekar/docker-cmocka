FROM ubuntu:xenial
MAINTAINER Gaurav Juvekar <gauravjuvekar@gmail.com>

RUN apt-get update && apt-get install -y \
		binutils \
		git \
		scons \
		wget \
		cmake \
		build-essential \
		pkg-config \
		valgrind \
		gcovr \
		&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN wget https://cmocka.org/files/1.1/cmocka-1.1.0.tar.xz && \
		tar -xf cmocka-1.1.0.tar.xz && cd cmocka-1.1.0 && \
		mkdir build && cd build && cmake -G "Unix Makefiles" .. && \
		make && make install && \
		cd ../.. && rm -rf cmocka*

RUN ldconfig
