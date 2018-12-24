FROM ubuntu:latest
MAINTAINER Gaurav Juvekar <gauravjuvekar@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
		binutils \
		git \
		scons \
		build-essential \
		pkg-config \
		valgrind \
		gcovr \
        libcmocka0 \
		&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
