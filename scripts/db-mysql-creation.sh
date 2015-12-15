#!/bin/sh
echo "----------"
echo "Would you like the script to create a MySQL database ? Y/n"
read inputAlias
if [ "$inputAlias" = "y" -o "$inputAlias" = "Y" -o -z "$inputAlias" ]
then
        echo "Database server [localhost]"
        read db_server
        if [ -z "$db_server" ]
        then
                db_server="localhost"
        fi
        echo "Database user [root]"
        read db_user
        if [ -z "$db_user" ]
        then
                db_user="root"
        fi
        echo "Database password []"
        read db_password
        if [ -z "$db_password" ]
        then
                db_password=""
        fi
        while [ -z "$db_name" ]
        do
          echo "Database Name"
          read db_name
        done
        Q1="CREATE DATABASE \`$db_name\`;"
        mysql -u "${db_user}" -h "${db_server}" --password="${db_password}" -e "$Q1"
        echo "Database $db_name created"
fi
