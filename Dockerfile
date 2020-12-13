FROM python:3.8-alpine

WORKDIR /usr/src/app

RUN apk --no-cache add gcc musl-dev
RUN pip install --no-cache-dir mkdocs
RUN pip install --no-cache-dir mkdocs-ivory
RUN pip install --no-cache-dir mkdocs-rtd-dropdown
WORKDIR /docs

EXPOSE 8000

ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
