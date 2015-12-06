#!/bin/bash

echo "preparing the vcl configuration"
substitute-env-vars.sh /etc/varnish /etc/varnish/default.vcl.tmpl

echo "preparing the varnish secret"
substitute-env-vars.sh /etc/varnish /etc/varnish/secret.tmpl

exit 0