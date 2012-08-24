export XTERM=xterm-color
export CLICOLOR=1

# TODO(awreece): Be robust to not having {brew,go} installed.
export GOROOT=`brew --prefix go`

# command -v brew >/dev/null 2>/dev/null
# if (( $? )); 
# then
#	export GOROOT=`brew --prefix go`
# fi
