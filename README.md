# What is this?

This is a simple link shortener, which is the result of a [tutorial I did on YouTube](https://www.youtube.com/watch?v=9KkTd4eDUMY).

# Important technologies used

- Rust (as our most beloved programming language of choice)
- Axum (as the web server)
- sqlx (as the persistence library without the need for a fully-fledged ORM)
- Prometheus (for metrics)
- Open Telemetry (for tracing and logging)

# How to build

You need Docker running and Docker Compose installed. This project uses sqlx and needs an active connection to a database
when building the source code. You can use the docker-compose file at the root of this repository to start an instance
of PostgreSQL to enable local development.
