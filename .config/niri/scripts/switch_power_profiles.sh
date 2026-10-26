#!/bin/env bash

PROFILES=("power-saver" "balanced" "performance")
n=${#PROFILES[@]}

current_profile="$(tlpctl get)"

i=0
should_change_flag=0
while :; do
  idx=$(( i % n ))
  profile="${PROFILES[idx]}"
  if [ "$should_change_flag" -eq 1 ]; then
      echo "$(tlpctl ${profile})"
      break 
  fi

  if [ "$profile" = "$current_profile" ]; then
      should_change_flag=1
  fi
  ((i++))
done
