#############################################################
# Generic configuration that applies to all shells
#############################################################

source ~/.shellvars
source ~/.shellfn
source ~/.shellpaths
source ~/.shellaliases
source ~/.iterm2_shell_integration.`basename $SHELL`
# Private/Proprietary shell aliases (not to be checked into the public repo) :)
#source ~/Dropbox/Private/Boxes/osx/.shellaliases

#############################################################
# Booking Proxy Functions
#############################################################


function proxy_set() {
  http_proxy='http://webproxy.corp.booking.com:3128'
  https_proxy='http://webproxy.corp.booking.com:3128'
  export http_proxy=$http_proxy
  export https_proxy=$https_proxy
  export HTTP_PROXY=$http_proxy
  export HTTPS_PROXY=$https_proxy
  export no_proxy=.bookin.com
  export NO_PROXY=$no_proxy
}
alias proxy_unset='unset http_proxy HTTP_PROXY https_proxy HTTPS_PROXY'

alias proxy_check='echo http_proxy = $http_proxy
                    echo https_proxy = $https_proxy'

proxy_set


