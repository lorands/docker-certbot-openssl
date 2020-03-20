FROM ubuntu:18.04

RUN set -x \
  && apt-get update \
	&& apt-get install -yq --no-install-recommends \
		openssl ca-certificates certbot python3-certbot-dns-route53 \
	&& apt-get clean \
	&& rm -r /var/lib/apt/lists/* \
    && apt-get autoremove -y -f \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /

VOLUME /etc/letsencrypt