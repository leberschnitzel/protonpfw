Docker version of the ProtonVPN Portforwarding script:
https://protonvpn.com/support/port-forwarding-manual-setup/

```
cd "$(python3 -m pip show py-natpmp | grep Location | cut -d\  -f 2)/natpmp" && while true ; do date ; python3 natpmp_client.py -g 10.2.0.1 0 0 || { echo -e "ERROR with natpmpc command \a" ; break ; } ; sleep 45 ; done
```

Container Output example:
![image](https://github.com/leberschnitzel/protonpfw/assets/39628021/b668661c-0005-44cb-a305-c1dacecccd62)
