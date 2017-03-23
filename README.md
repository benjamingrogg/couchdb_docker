CouchDB Docker Image
====================

Not for public use (yet).

Contains CouchDB 1.6.1

Based on Ubuntu 16.04 Linux try to keep the footprint small as possible.


Build
-----

`sudo docker build -t benjamingrogg/ubuntu-couchdb .`

Run
---

`sudo docker run -ti -d -p5984:5984 benjamingrogg/ubuntu-couchdb /usr/bin/couchdb`

