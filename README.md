Docker version of the ProtonVPN Portforwarding script:
https://protonvpn.com/support/port-forwarding-manual-setup/

```
cd "$(python3 -m pip show py-natpmp | grep Location | cut -d\  -f 2)/natpmp" && while true ; do date ; python3 natpmp_client.py -g 10.2.0.1 0 0 || { echo -e "ERROR with natpmpc command \a" ; break ; } ; sleep 45 ; done
```

Container Output example:
"Port forwarded: 33574"

You can use this output and put the port into wherever you need portforwarding.

If you are more skilled than me, you can probably automate it and take the port directly into a config :)
