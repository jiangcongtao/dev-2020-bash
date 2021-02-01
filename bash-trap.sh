#!/bin/sh

# Test: kill -s kill  $(ps -aex | grep [t]rap.sh | cut -d ' ' -f1)

handle_sigterm() { echo "Got SIGTERM"; }
handle_exit() { echo "Got EXIT"; }
handle_int() { echo "Got INT"; }
handle_kill() { echo "Got KILL"; }
handle_quit() { echo "Got QUIT"; }
handle_hup() { echo "Got HUP"; }

trap handle_sigterm SIGTERM 
trap handle_exit EXIT
trap handle_int INT
trap handle_kill KILL
trap handle_quit QUIT
trap handle_hup  HUP

while true
do
  DATE=`date -u +'%Y-%m-%d %H:%M:%S'`
  echo "${DATE} working ..."
  sleep 1
done
