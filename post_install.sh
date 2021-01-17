#!/bin/sh

# This script gets executed inside the jail right after plugin installation
# This is executed BEFORE any jailman scripts

# ===== Prepare
mkdir -p /mnt/nginx


# ===== Initialize jail
CRON_FILE="/jailcronfile"
touch "${CRON_FILE}"
echo "@reboot /mnt/script/init.sh" >> "${CRON_FILE}"
crontab -u root "${CRON_FILE}"

sysrc nginx_enable="YES"


# ===== Inform user
cat << EOF
Be sure to use the '/mnt/nginx' mountpoint.
By default you can use your own configuration 'nginx.conf' at root of this mountpoint.
Right after installation, the jail will shutdown.
EOF


# ===== Shutdown jail
poweroff
