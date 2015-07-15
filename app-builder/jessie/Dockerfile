FROM rothnic/pyenv:build-deps-latest
MAINTAINER nlr06886@gmail.com

ADD . /app

RUN cd /app && \
    pip install wheel

ENV WHEELHOUSE=/wheelhouse
ENV PIP_WHEEL_DIR=/wheelhouse
ENV PIP_FIND_LINKS=/wheelhouse

VOLUME /wheelhouse
VOLUME /app

ENTRYPOINT cd /app && \
           pip wheel . -r requirements.txt \
              -r dev-requirements.txt
