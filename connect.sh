#!/bin/sh

# exit on any errors:
set -e

if [ $# -lt 1 ]
then
  echo "Usage: $0 @pantheon-alias"
  exit 1
fi

# Authenticate with Terminus
terminus auth:login --email 'my-pantheon-accounts-email-address@my-domain.com'

# Path to pantheon.spf file.
# Should be located within the same directory as this file.
TEMPLATE="$HOME/Projects/pantheon-sqlpro/pantheon.spf"

# Temporary write path.
TMP_SPF='/tmp/tmp.spf'

# Update aliases
terminus aliases


# Set template variables.

# Database Creds
DATABASE=$(terminus connection:info ${1:1} --field=mysql_database)
HOST=$(terminus connection:info ${1:1} --field=mysql_host)
PORT=$(terminus connection:info ${1:1} --field=mysql_port)
PASSWORD=$(terminus connection:info ${1:1} --field=mysql_password)
USER=$(terminus connection:info ${1:1} --field=mysql_username)

# SSH Creds
SSH_HOST=$(terminus connection:info ${1:1} --field=sftp_host)
SSH_USER=$(terminus connection:info ${1:1} --field=sftp_username)
SSH_PASSWORD='my-pantheon-account-password' # This is only passed to sequal pro for use.
SSH_PORT='2222'

# Echo variables into template.

# This is for Sequel Pro:
eval "echo \"$(< $TEMPLATE)\""
# For some reason, Sequel Pro or Open do not behave the same way given the -f 
# flag compared to opening a file from file system. So, we write to a tmp file.
eval "echo \"$(< $TEMPLATE)\"" > $TMP_SPF

# Swap this out to fit your system:
open $TMP_SPF