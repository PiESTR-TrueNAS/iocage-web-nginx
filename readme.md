# iocage-web-nginx

## Installing Plugins
Download the plugin manifest file to your local file system.

```bash
fetch https://raw.githubusercontent.com/PiESTR-TrueNAS/iocage-web-nginx/master/manifest.json
```

Install the plugin. Adjust the network settings as needed.
```bash
iocage fetch -P manifest.json
```