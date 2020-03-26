# Youtube: https://www.youtube.com/watch?v=itf0kJQwi8o

#!/bin/sh

# Download Metasploit installer by running the commands below in your terminal.
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall

# Once the script is downloaded,make it executable
chmod 755 msfinstall
./msfinstall

# Create and initialize the msf database.
msfdb init

# Launch msfconsole
msfconsole

# Verify database connectivity 
db_status

# Updating Metasploit Framework
msfupdate

# Check version:
msfconsole  --version


