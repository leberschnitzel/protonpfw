#!/bin/sh

cd "$(python3 -m pip show py-natpmp | grep Location | cut -d\  -f 2)/natpmp" && while true ; do
  date
  python3 natpmp_client.py -g 10.2.0.1 0 0 || { echo -e "ERROR with natpmpc command \a" ; break ; }
  sleep 45
done
