# base.docker
#
# Contains shell, pyenv, git and curl ready to use

FROM gliderlabs/alpine:latest

RUN apk-install curl \
    ca-certificates \
    bash \
    git && \
    curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer -o /pyenv-installer && \
    touch /root/.bashrc && \
    /bin/ln -s /root/.bashrc /root/.bash_profile && \
    /bin/bash /pyenv-installer && \
    rm /pyenv-installer && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile && \
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
