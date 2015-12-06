# This is a basic VCL configuration file for varnish.
#
vcl 4.0;
import std;
include ".all_includes.vcl";
backend default {
    .host = "backendhost";
    .port = "8080";
}