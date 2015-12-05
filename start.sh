#!/bin/bash

echo "preparing the varnish configuration"
substitute-env-vars.sh /etc/varnish /etc/varnish/default.vcl.tmpl

# Start varnish and log
varnishd -f /etc/varnish/default.vcl -s file,/var/lib/varnish/varnish_storage.bin,${CACHE_SIZE} -T 0.0.0.0:${VARNISH_ADMIN_PORT} -a 0.0.0.0:${VARNISH_PORT} ${VARNISHD_PARAMS}
varnishlog