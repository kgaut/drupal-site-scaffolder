#!/bin/sh

# Prepare the settings file for installation
if [ ! -f www/sites/default/settings.php ]
  then
    cp www/sites/default/default.settings.php www/sites/default/settings.php
    chmod 777 www/sites/default/settings.php
fi

# Prepare the files directory for installation
if [ ! -d www/sites/default/files ]
  then
    mkdir -m777 www/sites/default/files
fi

if [ ! -d www/sites/default/tmp ]
  then
    mkdir -m777 www/sites/default/tmp
fi