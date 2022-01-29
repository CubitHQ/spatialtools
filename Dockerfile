FROM ruby:3.1.0

LABEL author="Anthony Morales <amorales@cubitplanning.com>"
LABEL description="Ruby, Rake and spatialite playground"

RUN apt-get update && apt-get install -y \ 
  build-essential \
  git \
  sqlite3 \
  spatialite-bin \
  libsqlite3-dev \
  libsqlite3-mod-spatialite \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app/

RUN bundle install
