FROM ruby:2.6.3

ENV TZ Asia/Tokyo
ENV RAILS_ENV development

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential libpq-dev nodejs mysql-client && \
    apt-get clean && \
    rm -rf /var/cache/apt
RUN gem install bundler

COPY Gemfile Gemfile.lock /app/

WORKDIR /app
RUN bundle install

COPY . /app

ENTRYPOINT ["/bin/bash", "/app/docker-entrypoint.sh"]

