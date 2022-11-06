#!/bin/bash
CMD="python3 -u /usr/local/bin/pproxy"
$CMD -l http://:8888/ -r socks5://$ROUTE_IP