FROM ruby:3.3-slim

RUN apt-get update -qq && \
    apt-get install -yq --no-install-recommends \
    build-essential \
    git \
    vim \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV LANG=C.UTF-8 \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3

RUN gem install bundler

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

CMD ['bin/bash']
