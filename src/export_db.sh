#!/bin/bash
#
# This shell script is used to export a MySQL database.
# Adapted from: https://gist.github.com/valerio-bozzolan/b10199e2e2f835b7ca9a
#

file=/etc/mysql/user.cnf

while [ -z "$host" ] && read ln; do
        [[ "$ln" =~ host\ *=\ (.*)$ ]]
        host="${BASH_REMATCH[1]}"
done < $file

while [ -z "$user" ] && read ln; do
        [[ "$ln" =~ user\ *=\ (.*)$ ]]
        user="${BASH_REMATCH[1]}"
done < $file

while [ -z "$pass" ] && read ln; do
        [[ "$ln" =~ password\ *=\ (.*)$ ]]
        pass="${BASH_REMATCH[1]}"
done < $file

database=toolkit_db

echo "Backing up..."
mysqldump -h $host --user=$user --password=$pass $database > toolkit_db.sql;
echo "Database backed up"
