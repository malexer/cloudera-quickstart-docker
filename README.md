Overview
========

Wrapper for [cloudera-quickstart] Docker image to quickly start it using
docker-compose.


Without Cloudera Manager
========================

Easy and less resource consuming way to start Cloudera in a Docker container.

    $ cd quickstart
    $ docker-compose up -d


With Cloudera Manager
=====================

Cloudera Manager will be started instead of running
`/usr/bin/docker-quickstart`.

I was not able to get a stable environment on my laptop.

    $ docker-compose up -d


Startup time
============

Wait several minutes till all services are up.

See logs to check startup status:

    $ docker logs -f cloudera


[cloudera-quickstart]: https://hub.docker.com/r/cloudera/quickstart/
