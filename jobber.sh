#!/bin/bash

while getopts ":c:" opt; do
  case ${opt} in
    c ) # process option h
      i=$OPTARG
      while [ $i -gt 0 ]; do
        printf "newman run finalspace.json -n 1 -r json-summary --reporter-summary-json-export export/job$i.json\n" >> tempjobs
        let i--
      done
      shuf tempjobs > jobs
      rm tempjobs
      ;;
    \? ) echo "Usage: cmd [-c]"
      ;;
  esac
done

exit 0