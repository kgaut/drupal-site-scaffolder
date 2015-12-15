#!/bin/sh

# Prepare the settings file for installation
if [ ! -f www/sites/default/settings.php ]
  then
    cp www/sites/default/default.settings.php www/sites/default/settings.php
    chmod 777 www/sites/default/settings.php
    echo "default.settings.php copied to settings.php"
fi

# Prepare the services file for installation
if [ ! -f www/sites/default/services.yml ]
  then
    cp www/sites/default/default.services.yml www/sites/default/services.yml
    chmod 777 www/sites/default/services.yml
    echo "default.services.yml copied to services.yml"
fi

# Prepare the files directory for installation
if [ ! -d www/sites/default/files ]
  then
    mkdir -m777 www/sites/default/files
    touch www/sites/default/files/.gitkeep
    echo "files folder created"
fi

if [ ! -d www/sites/default/tmp ]
  then
    mkdir -m777 www/sites/default/tmp
    touch www/sites/default/tmp/.gitkeep
    echo "tmp folder created"
fi