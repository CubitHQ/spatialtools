
apt-get update && apt-get install -y \ 
  build-essential \
  git \
  sqlite3 \
  spatialite-bin \
  libsqlite3-dev \
  libsqlite3-mod-spatialite \
  && rm -rf /var/lib/apt/lists/*

bundle install