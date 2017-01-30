FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.7.0

RUN gem install bundle-try --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bundler-try"]
CMD ["--help"]
