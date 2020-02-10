Pantheon's provided script for connecting to databases with Sequel Pro no longer works. https://pantheon.io/docs/mysql-access

This script is an updated/fixed version based off of the original.


# Items to modify before use
At the top of the connect.sh file is a set of variables. Set these to use the script.


# Usage
Make connect.sh executable, set an alias if you would like.

run from directory without alias: './connect.sh @site.environment'
ex: /connect.sh @aaikow8.dev # Will connect to dev environment db