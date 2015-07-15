

docker build -t rothnic/pyenv:alpine-base-latest base/alpine
docker build -t rothnic/pyenv:alpine-build-deps-latest build-deps/alpine
docker build -t rothnic/pyenv:alpine-py-builder-latest py-builder/alpine

rm -rf .python
mkdir -p .python
docker run --rm \
       -v "$(pwd)"/.python:/root/.pyenv/versions \
       rothnic/pyenv:alpine-py-builder-latest install 2.7.10
