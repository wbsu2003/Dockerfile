#!/bin/bash

find '/etc/apache2' -name '*.conf' -exec sed -i -e 's,localhost,'"$WEB_URL"',g' {} \;

exec apache2-foreground
