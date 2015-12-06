FROM debian:latest

MAINTAINER Achim Rosenhagen <a.rosenhagen@ffuenf.de>

ENV REFRESHED_AT 2015-12-06

RUN apt-get update \
    && apt-get install -qy \
    varnish

RUN apt-get purge -y --auto-remove \
    && until rm -rf /var/lib/apt/lists/*; do sleep 1; done

# Make our custom VCLs available on the container
COPY default.vcl.tmpl /etc/varnish/default.vcl.tmpl

# Make our custom secret file
COPY secret.tmpl /etc/varnish/secret.tmpl

# add empty include file to allow additional vcls in vcl.d
RUN touch /etc/varnish/.all_includes.vcl
RUN mkdir /etc/varnish/vcl.d

# Add transformation/utility script
COPY substitute-env-vars.sh /bin/substitute-env-vars.sh
RUN chmod +x /bin/substitute-env-vars.sh

ENV VARNISH_PORT 6081
ENV VARNISH_ADMIN_PORT 6082
ENV VARNISH_SECRET YOURSECRET
ENV VARNISH_BACKEND_HOST backendhost
ENV VARNISH_BACKEND_PORT 8080
ENV CACHE_SIZE 100M
ENV INSTANCE default
ENV VARNISHD_PARAMS -p cli_buffer=100000 -p default_ttl=3600 -p default_grace=3600 -p feature=+esi_ignore_other_elements -p vcc_allow_inline_c=on

COPY install.sh /install.sh
RUN chmod +x /install.sh
RUN /install.sh

COPY run.sh /run.sh
RUN chmod +x /run.sh

# Expose volumes to be able to use data containers
VOLUME ["/var/lib/varnish", "/etc/varnish"]

ENTRYPOINT ["/run.sh"]

EXPOSE 6081
EXPOSE 6082