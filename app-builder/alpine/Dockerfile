FROM rothnic/pyenv-alpine:build-deps-latest

RUN pip install wheel

ENV WHEELHOUSE=/wheelhouse
ENV PIP_WHEEL_DIR=/wheelhouse
ENV PIP_FIND_LINKS=/wheelhouse

VOLUME /wheelhouse
VOLUME /application

ADD . /app

ENTRYPOINT cd /app && \
           pip wheel . -r requirements.txt \
              -r dev-requirements.txt
