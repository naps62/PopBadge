FROM ruby:2.5-slim

RUN apt-get update \
  && apt-get install -y \
    build-essential \
    chrpath \
    postgresql-client \
    sqlite3 --no-install-recommends \
    libpq-dev \
    imagemagick \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir -p /app

# Install application in the /app directory
WORKDIR /app

COPY Gemfile /app/
COPY Gemfile.lock /app/

ENV RAILS_ENV=production \
  SECRET_KEY_BASE=ac7b4289ad1b6fcf3add7a0ba88057355749cea63eaa66c788a1442379fa75790789118be86e6c412e8479841396279444fc607994f98988b4cf8caffad3ee19

RUN gem install rake && bundle install --without test development --no-cache \
 && rm -rf /usr/local/bundle/cache/*

COPY . /app

EXPOSE 3000

ENTRYPOINT ["/app/entrypoint.sh"]
