#!/usr/bin/sh

set -euxo pipefail;

docker run \
  --name "8-week-sql-challenge" \
  --publish "5432:5432" \
  --env POSTGRES_USER=postgres \
  --env POSTGRES_PASSWORD=postgres \
  --volume `pwd`/postgres_db:/var/lib/postgresql/data \
  --volume `pwd`/schema:/docker-entrypoint-initdb.d/ \
  --rm \
  --detach \
  postgres:14.1-alpine
