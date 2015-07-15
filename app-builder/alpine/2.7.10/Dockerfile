FROM rothnic/pyenv:alpine-build-deps-latest

RUN pyenv install 2.7.10
RUN pip install wheel

ENV WHEELHOUSE=/wheelhouse
ENV PIP_WHEEL_DIR=/wheelhouse
ENV PIP_FIND_LINKS=/wheelhouse

VOLUME /wheelhouse
VOLUME /app

ADD . /app
WORKDIR /app
ENTRYPOINT pip wheel . -r requirements.txt \
              -r dev-requirements.txt
