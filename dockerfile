from python:3.7.2-stretch

COPY ./cpio_2.11+dfsg-6_amd64.deb ./packages/cpio_2.11+dfsg-6_amd64.deb

RUN dpkg -i ./packages/cpio_2.11+dfsg-6_amd64.deb

run find . -name '*.md' | cpio -pdm ./docs

run pip install mkdocs