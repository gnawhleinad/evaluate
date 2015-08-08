A Node.js application for remote relevance evaluation via QnA.

# Develop
## Prerequisites
- [vagrant](http://www.vagrantup.com/downloads.html)

Start the virtual machine with [Docker](https://www.docker.com/) by running:

```bash
$ vagrant up
```

To build the site, run:

```bash
$ vagrant ssh
[vagrant@evaluate ~]$ cd /vagrant
[vagrant@evaluate ~]$ docker build -t evaluate/relevance .
[vagrant@evaluate ~]$ docker run -d -p 3000:3000 evaluate/relevance
```

# Example
Relevance evaluation is available:

```bash
$ curl 'http://127.0.0.1:3000/api/relevance/evaluate' \
	-H 'Content-Type: application/json' \
	--data-binary '{"relevance":"name of operating system"}'
{"answers":["Linux Red Hat 4.8.2-16"],"errors":[],"time":123,"type":"string"}
```
