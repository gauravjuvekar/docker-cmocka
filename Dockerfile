FROM ubuntu:latest
MAINTAINER Gaurav Juvekar <gauravjuvekar@gmail.com>

RUN apt-get update && apt-get install -y \
		binutils \
		git \
		scons \
		build-essential \
		pkg-config \
		valgrind \
		gcovr \
        cmocka \
		&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
