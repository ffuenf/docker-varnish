<a href="http://www.ffuenf.de" title="ffuenf - code • design • e-commerce"><img src="https://github.com/ffuenf/Ffuenf_Common/blob/master/skin/adminhtml/default/default/ffuenf/ffuenf.png" alt="ffuenf - code • design • e-commerce" /></a>

docker-varnish
==============
[![GitHub tag](http://img.shields.io/github/tag/ffuenf/docker-varnish.svg)][tag]
[![Build Status](https://img.shields.io/travis/ffuenf/docker-varnish.svg)][travis]
[![Docker Pulls](https://img.shields.io/docker/pulls/ffuenf/varnish.svg)][pulls]
[![Docker Stars](https://img.shields.io/docker/stars/ffuenf/varnish.svg)][stars]
[![Docker Layers](https://badge.imagelayers.io/ffuenf/varnish.svg)][layers]
[![PayPal Donate](https://img.shields.io/badge/paypal-donate-blue.svg)][paypal_donate]
[tag]: https://github.com/ffuenf/docker-varnish/tags
[travis]: https://travis-ci.org/ffuenf/docker-varnish
[pulls]: https://hub.docker.com/r/ffuenf/varnish/
[stars]: https://hub.docker.com/r/ffuenf/varnish/
[layers]: https://imagelayers.io/?images=ffuenf/varnish:latest
[paypal_donate]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=J2PQS2WLT2Y8W&item_name=docker-varnish%3a%20docker-varnish&item_number=docker-modman&currency_code=EUR

Container with Varnish 4.x built on top of Debian

Environment Variables
---------------------

* ENV VARNISH_PORT          6081
* ENV VARNISH_ADMIN_PORT    6082
* ENV VARNISH_BACKEND_HOST  backendhost
* ENV VARNISH_BACKEND_PORT  8080
* ENV CACHE_SIZE            100M
* ENV VARNISHD_PARAMS       -p syslog_cli_traffic=off -p cli_buffer=100000 -p default_ttl=3600 -p default_grace=3600 -p feature=+esi_ignore_other_elements -p vcc_allow_inline_c=on

Volumes
-------

* /var/lib/varnish
* /etc/varnish

Exposed Ports
-------------

* 6081
* 6082

Docker Compose
--------------
See [docker-compose.yml](docker-compose.yml) for an example implementation.

Development
-----------
1. Fork the repository from GitHub.
2. Clone your fork to your local machine:

        $ git clone git@github.com:USER/docker-varnish.git

3. Create a git branch

        $ git checkout -b my_bug_fix

5. Make your changes/patches/fixes, committing appropriately
7. Push your changes to GitHub
8. Open a Pull Request

License and Author
------------------

- Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)

The MIT License (MIT)

Copyright (c) 2015 ffuenf

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
