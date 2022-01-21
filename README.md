# Airflow as Service

## Generating the Installer

1. Clone this repo.
3. Enter the project directory `cd Airflow_as_Service/`
4. Execute `sudo make clean`
4. Then, execute the script `./makedeb`

## Installing the generated package
1. First, create a postgresql database with the name **airflow** in your **localhost**.
2. Then, change the "password" name in `airflow.service` by your real postgresql password.
3. Install the deb package with the following command: `sudo dpkg -i airflow-equipamento_{version}.deb`
4. Voilà.
<!-- ## Changelog -->

<!-- [CHANGELOG.md](changelog.md) -->
