#
#  Place this script inside /etc/profile.d/ to set proxy on log in
#    AND
#  Copy-paste in to your ~/.bashrc to switch between proxies easily in shells
#

#
#  DEFAULTS
#
#  Set default proxy details here. Eg.
#  server=172.31.100.14
#  port=3128
#  and so on ...
#

server=
port=
username=
password=


#
#  Function to set the proxy
#
#  Arguments:
#  1 - IP address of proxy server [optional]
#  2 - Port of proxy server [optional]
#  3 - Proxy username [optional]
#  4 - Proxy password [optional]
#

function proxy() {

  # Assign arguments if provided
  [ ! -z "$1" ] && server=$1
  [ ! -z "$2" ] && port=$2
  [ ! -z "$3" ] && username=$3
  [ ! -z "$4" ] && password=$4

  proxy=http://$username:$password@$server:$port/

  # Set proxy environment variables
  export http_proxy=$proxy
  export https_proxy=$proxy

}


#
#  Function to unset the proxy
#
#  Arguments: 0
#

function proxyoff() {
  unset http_proxy
  unset https_proxy
}


# Set default proxy
proxy
