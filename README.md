# hanaexpress_install
Install Hana Express on Docker

Step 1. Install Docker-ce by running script as ./docker-ce-install.sh

Step 2. Update kernel parametrs for HANA express, refere update_kernel_params.txt

Step 3. Update master password file location in deployHanaExpress.sh

Step 4. Deploy HANA Container using deployHanaExpress.sh

Step 5. Login into docker container with command "docker exec -it hanaexpress /bin/bash"

Step 6. Run HANA DB client as SYSTEMDB, refere fix_hana_express_host.sh
