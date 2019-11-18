Pantheon's provided script for connecting to their databases with Sequel Pro no longer works.

This is a working version based off of the original.

# Modify before use
Within connect.sh be sure to replace the following literal strings with your own values:

my-pantheon-accounts-email-address@my-domain.com
my-pantheon-account-password

First is terminus authentication. Your pantheon account email address.
Second is your pantheon account password. This is passed to sequel pro, then sequel pro uses it to authenticate with the pantheon database.
Third is to make sure the 'TEMPLATE' variable is correct within connect.sh.

# Usage
Make executable.
Update the modifications listed above.

./connect.sh @site.environment