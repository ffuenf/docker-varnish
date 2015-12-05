#!/bin/bash

# include additional varnish configs
if [ -f /etc/varnish/vcl.d/*.vcl ] ; then
    ls /etc/varnish/vcl.d/*.vcl | awk '{ printf "include \"%s\";\n", $1 }' > .all_includes.vcl
fi

# Start varnish and log
varnishd -f /etc/varnish/default.vcl -s file,/var/lib/varnish/varnish_storage.bin,${CACHE_SIZE} -T 0.0.0.0:${VARNISH_ADMIN_PORT} -a 0.0.0.0:${VARNISH_PORT} ${VARNISHD_PARAMS}
varnishlog
