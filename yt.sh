#!/usr/bin/env bash
# bash yt.sh <пользователь> "<сообщение коммита>"
who="$1"; msg="$2"
echo "$(date '+%F %T') $who: $msg" >> work.log
git add -A
git -c user.name="$who" -c user.email="$who@cherkizovo-team.local" commit -q -m "$msg"
git push -q origin HEAD
echo "OK: $who — $msg"
