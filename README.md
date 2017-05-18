# The OAD Data Science Toolkit Database 

The OAD Data Science Toolkit Database (```toolkit_db```) is a relational SQL database used for the curriculum map of the OAD Data Science Toolkit. It is not ready yet, and is very much to be considered work in progress.

## Create Tables

To create the tables you need to first create a database using MySQL:

```SQL
CREATE DATABASE toolkit_db;
```

Before creating tables we want to ensure we are using the correct MySQL credentials. On a Debian system this is done by typing the follwing command:

```sh
# Make a copy of the default config file
sudo cp /etc/mysql/debian.cnf /etc/mysql/user.cnf
# Make sure your useraccount can read it without sudo permissions
sudo chown user:user user.cnf
```

Make sure you use your own MySQL username instead of ```user```.

Edit the ```[client]``` part of the file.

```sh
[client]
host     = localhost
user     = your_MySQL_user
password = your_MySQL_user_password
```

Run ```src/create_tables.py``` to create the tables.

```python
python src/create_tables.py
```

If the database already exists and you want to start anew:

```SQL
DROP DATABASE IF EXISTS toolkit_db;
```

## Verify that the tables have been created

In the MySQL terminal select the ```toolkit_db``` database:

```SQL
USE toolkit_db;
```

To look at the topics table type:
```SQL
SELECT * FROM topics_astr;
```

To look at the sub-topic table type:
```SQL
SELECT * FROM subtopics_astr;
```

## Export the tables

To export the tables into a file called ```toolkit_db.sql``` run the bash script

```sh
cd src # change directory to the course directory
chmod +x export_db.sh # Make it executable (need only do once)
./export_db.sh
```

The database export, ```toolkit_db.sql```, will be placed in the ```src``` folder.