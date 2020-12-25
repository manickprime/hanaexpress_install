# hanaexpress_install
<b>
# Note: All shell scripts are expecting ZSH shell, if zsh is not available please update file to point to bash
</b>
Install Hana Express on Docker

Step 1. Install Docker-ce by running script as ./docker-ce-install.sh

Step 2. Update kernel parametrs for HANA express, refere update_kernel_params.txt

Step 3. Update master password file location in deployHanaExpress.sh

Step 4. Deploy HANA Container using deployHanaExpress.sh

Step 5. Login into docker container with command "docker exec -it hanaexpress /bin/bash"

Step 6. Run HANA DB client as SYSTEMDB, refere hdsql_query.txt. Replace <system_database> with "SYSTEMDB" and <password> with the master password maintained in the master password file in step 3

Step 7. Fix hostname in global configure using fix_hana_express_host.sh to access HDB from external hosts

Step 8. If in dobut, please refere links.txt which contains individual links to install process
