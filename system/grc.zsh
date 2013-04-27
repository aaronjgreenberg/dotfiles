GRC=`which grc`
if [ "$TERM" != dumb ] && [ -e "$GRC" ]
then
    alias colorify="$GRC colorify -es --colour=auto"
    alias configure='colorify ./configure'
    alias diff='colorify diff'
    alias make='colorify make'
    alias gcc='colorify gcc'
    alias g++='colorify g++'
    alias as='colorify as'
    alias gas='colorify gas'
    alias ld='colorify ld'
    alias netstat='colorify netstat'
    alias ping='colorify ping'
    alias traceroute='colorify /usr/sbin/traceroute'
    alias curl='colorify curl'
    alias grep='colorify grep'
fi
