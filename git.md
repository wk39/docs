# Git

## SSH private key
1. get key and config
   ```sh
   cd ~/.ssh
   scp user@myserver.com:.ssh/id_rsa id_rsa_myserver
   chmod 600 id_rsa_myserver

   echo "Host myserver" >> config
   echo "Hostname myserver.com" >> config
   echo "IdentityFile ~/.ssh/id_rsa_myserver" >> config
   echo "User myname" >> config
   echo "Port xx" >> config
   chmod 600 config
   ```
1. clone repo using Host title
   ```
   git clone myserver:path/to/repo.git
   ```
  
  
