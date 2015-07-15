
# Contains pyenv, git, curl, and build requirements ready to use

FROM rothnic/pyenv-jessie:base-latest
MAINTAINER nlr06886@gmail.com

# remove existing python versions
RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc \
		libbz2-dev \
		libc6-dev \
		libncurses-dev \
		libreadline-dev \
		libsqlite3-dev \
		libssl-dev \
		make \
		xz-utils \
		zlib1g-dev
