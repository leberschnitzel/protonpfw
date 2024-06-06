Docker version of the ProtonVPN Portforwarding script:
https://protonvpn.com/support/port-forwarding-manual-setup/

```
cd "$(python3 -m pip show py-natpmp | grep Location | cut -d\  -f 2)/natpmp" && while true ; do date ; python3 natpmp_client.py -g 10.2.0.1 0 0 || { echo -e "ERROR with natpmpc command \a" ; break ; } ; sleep 45 ; done
```

Container Output example:

![image](https://github.com/leberschnitzel/protonpfw/assets/39628021/c9cf2627-9e22-4b31-ad3a-6f30289da9e3)

You can use this output and put the port into wherever you need portforwarding.

This branche will implement directly with deluge in the future