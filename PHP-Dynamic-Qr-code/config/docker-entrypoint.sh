#!/bin/bash

find '/etc/apache2' -name '*.conf' -exec sed -i -e 's,localhost,'"$WEB_URL"',g' {} \;

find '/var/www/html' -name 'read.php' -exec sed -i -e 's,qrcode/config,config,g' {} \; 

exec apache2-foreground
