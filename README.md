# 8 Week SQL Challenge

We'll try to implement solutions for some of the case studies from [8 Week SQL Challenge](https://8weeksqlchallenge.com/).

[Source Repo](https://github.com/aalekhpatel07/8-week-sql-challenge)

## Solutions/Walkthroughs

Read the [book](https://aalekhpatel07.github.io/8-week-sql-challenge/) and follow along! 

Or jump to individual challenges:

- [x] [Danny's Diner](https://aalekhpatel07.github.io/8-week-sql-challenge/01-dannys-diner/index.html)
- [ ] [Pizza Runner](https://aalekhpatel07.github.io/8-week-sql-challenge/02-pizza-runner/index.html)
- [ ] ...
## Setting up

If you wish to follow along these solutions, you might find the best value in running them as you go, and for that you need a working Postgres database environment.

We'll use a Docker container for Postgres so we don't have to install it locally.

First, clone the repository to get the schemas for the challenges into a `schema/` directory.

```sh
git clone https://github.com/aalekhpatel07/8-week-sql-challenge && \
    cd 8-week-sql-challenge
```

Then, run the following command to start a Postgres14 docker container that includes the schemas for the challenges.

```sh
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
```

Once the container has started, use your favourite IDE to connect to the database at `0.0.0.0:5432`. 

The database has user/pass of `postgres/postgres` and the URL is `jdbc:postgresql://localhost:5432/`.
