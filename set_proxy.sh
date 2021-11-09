
#!/bin/bash

hostip=$(awk '/nameserver/{print $2}' /etc/resolv.conf | head -1)
proxy_port=7890

set_proxy() {
    export all_proxy="http://${hostip}:${proxy_port}"
}

unset_proxy() {
    unset all_proxy
}

set_proxy


