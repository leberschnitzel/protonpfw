#!/bin/sh

cd "$(python3 -m pip show py-natpmp | grep Location | cut -d\  -f 2)/natpmp" && while true ; do
  date
  output=$(python3 natpmp_client.py -g 10.2.0.1 0 0) || { echo -e "ERROR with natpmpc command \a" ; break ; }
  echo $output
  public_port=$(echo $output | grep -oP 'public port \K\d+')
  sed -i "s/\"listen_ports\": \[[0-9]*, [0-9]*\],/\"listen_ports\": [$public_port, $public_port],/g" /your/deluge/config/core.conf
  sleep 45
done
