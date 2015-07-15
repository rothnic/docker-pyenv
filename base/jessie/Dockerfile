
# Contains pyenv, git, curl, and build requirements ready to use

FROM debian:jessie
MAINTAINER nlr06886@gmail.com

# remove existing python versions
RUN apt-get update && apt-get install -y --no-install-recommends \
		ca-certificates \
		libsqlite3-0 \
		libssl1.0.0 \
    curl \
    git && \
    rm -rf /var/lib/apt/lists/* && \
    curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer -o /pyenv-installer && \
    /bin/bash /pyenv-installer && \
    rm /pyenv-installer && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile && \
    echo 'eval "$(pyenv init -)"' >> ~/.profile && \
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.profile

ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
