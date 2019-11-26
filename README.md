Pantheon's provided script for connecting to their databases with Sequel Pro no longer works.

This is a working version based off of the original.

# Modify before use
Within connect.sh be sure to replace the following literal strings with your own values:

my-pantheon-accounts-email-address@my-domain.com
my-pantheon-account-password

First is terminus authentication. Replace 'my-pantheon-accounts-email-address@my-domain.com' with your pantheon account email address.

Second is your pantheon account password. Replace 'my-pantheon-account-password'.

Third is to make sure the 'TEMPLATE' variable is correct.

# Usage
Make executable.
Update the modifications listed above.

./connect.sh @site.environment
