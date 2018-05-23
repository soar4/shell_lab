#!/usr/bin/env bash

alias eps="ps -ef | grep -v grep | grep "
mps1() {
    ps -o euser,pid,ppid,pcpu,start_time,stat,tty,time,cmd -e | awk -v prog=$1 '{
        if ( NR == 1 || ( match($0 ,prog) && $0 !~ /awk/) ) {
            print $0
        }
    }'
}
mps() {
    ps -o euser,pid,ppid,pgid,pcpu,start_time,stat,tty,time,cmd -e | egrep "(EUSER|$1)" | grep -v "grep"
}

