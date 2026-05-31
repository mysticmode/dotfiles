export EDITOR=vim
export LANG=en_US.UTF-8

export GOPATH=~/.local/share/go
export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off
export GOTOOLCHAIN=local

# set vim terminal to 256 colors.
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi
