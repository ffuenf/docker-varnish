#!/bin/bash

echo "preparing the vcl configuration"
substitute-env-vars.sh /etc /etc/varnish/default.vcl.tmpl

exit 0