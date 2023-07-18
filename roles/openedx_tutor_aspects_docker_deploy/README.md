# Ansible Playbook

This Ansible playbook deploys a set of tasks to configure a remote server. It includes the following files and folders:

## Folder Structure

- `defaults`: Contains the default variable values for the playbook.
  - `main.yml`: Default variable values used in the playbook.

- `tasks`: Contains the task files for the playbook.
  - `main.yml`: Playbook tasks and configurations.

- `templates`: Contains the template files used in the playbook.
  - `script.sh`: Bash script template for the remote server.
  - `config.yml.j2`: Jinja2 template for the `config.yml` file.

## Before usage
Please run this commands before for already have the users on MYSQL

1. **Grant privileges to openedx user**: Manually execute the following MySQL command to grant privileges to the `openedx` user:

   ```sql
   GRANT ALL PRIVILEGES ON *.* TO 'openedx'@'<MYSQL_HOST>' IDENTIFIED BY '<OPENEDX_MYSQL_PASSWORD>';```

2. **Flush privileges**: Manually execute the following MySQL command to flush privileges:

    ```sql
    FLUSH PRIVILEGES;```

## Playbook Tasks

The playbook performs the following tasks:


3. **Copy script.sh to remote server**: Copies the `script.sh` template file to the remote server and sets the file permissions to 0755.
4. **Execute script.sh**: Executes the `script.sh` file on the remote server.

5. **Generate config.yml file from template**: Generates the `config.yml` file using the `config.yml.j2` template. The variables in the template are loaded from the default values specified in the `defaults/main.yml` file.


