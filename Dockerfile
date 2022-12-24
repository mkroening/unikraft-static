FROM buildpack-deps:bullseye

RUN set -ex; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		python3-pip \
	; \
	rm -rf /var/lib/apt/lists/*

RUN set -ex; \
	pip3 install git+https://github.com/unikraft/kraft.git; \
	pip3 cache purge

RUN set -ex; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		bison \
		flex \
	; \
	rm -rf /var/lib/apt/lists/*

ARG UK_KRAFT_GITHUB_TOKEN

RUN set -ex; \
	kraft list update; \
	kraft list pull unikraft

WORKDIR /root
