# 1. Configure for your domain

Specify following variables in `docker-compose.yml` file for your domain.

```bash
	VIRTUAL_PORT: 80 		# The port your App listen on.
	VIRTUAL_HOST: "nextcloud.bar.com"	# The (sub)domain of your application.
	SERVICE_DATA_ROOT_PATH='./volumes' # Database and nextcloud datas root path.
```

# 2. Initialize services environment

Run the following script

```bash
./init.sh
```

# 3. Configure secrets for services

Configure your secrets for services in files as following descriptions, which in `${SERVICE_DATA_ROOT_PATH}/secrets`.

  
* `nextcloud_admin_password.txt` : put admin password in this file
* `nextcloud_admin_user.txt` : put admin username in this file
* `postgres_db.txt` : put postgresql db name in this file
* `postgres_password.txt` : put postgresql password in this file
* `postgres_user.txt` : put postgresql username in this file
    

# 4. Launch:

```bash
docker compose up -d
```

