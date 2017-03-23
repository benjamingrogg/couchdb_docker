FROM ubuntu:16.04

RUN	apt-get update && \
	apt-get -y install wget erlang-base erlang-crypto erlang-eunit erlang-inets erlang-os-mon erlang-public-key erlang-ssl erlang-syntax-tools erlang-tools erlang-xmerl erlang-asn1 libc6 libcurl3 libgcc1 libicu55 libmozjs185-1.0 libstdc++6 && \
	cd /tmp && \
	wget http://ppa.launchpad.net/couchdb/stable/ubuntu/pool/main/a/apache-couchdb/couchdb-common_1.6.1-0ubuntu6ppa2~xenial1_all.deb && \
	wget http://ppa.launchpad.net/couchdb/stable/ubuntu/pool/main/a/apache-couchdb/couchdb-bin_1.6.1-0ubuntu6ppa2~xenial1_amd64.deb && \
	wget http://ppa.launchpad.net/couchdb/stable/ubuntu/pool/main/a/apache-couchdb/couchdb_1.6.1-0ubuntu6ppa2~xenial1_all.deb && \
	dpkg -i couchdb-common_1.6.1-0ubuntu6ppa2~xenial1_all.deb && \
	dpkg -i couchdb-bin_1.6.1-0ubuntu6ppa2~xenial1_amd64.deb && \
	dpkg -i couchdb_1.6.1-0ubuntu6ppa2~xenial1_all.deb && \
	rm /tmp/* && \
	mkdir /run/couchdb && \
	sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /etc/couchdb/default.ini

 
EXPOSE 5984


