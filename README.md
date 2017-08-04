# The OAD Data Science Toolkit Database 

The OAD Data Science Toolkit Database (```toolkit_db```) is a relational SQL database used for the curriculum map of the OAD Data Science Toolkit.

## Accessing the database

The database is available as a SQL file in this repository (_toolkit_db.sql_). To be able to access this database you need a mysql compatible program installed on your machine.

For the website to interface with the database, the website will look for a SQL config file called _user.cnf_. This file stores the information on the host, username and password. This file needs to be available on your system for you to be able to connect to the database via the website. Here are a few short instructions on how to configure this file:

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

## Verify that the config file is being read properly

In the MySQL terminal select the ```toolkit_db``` database:

```SQL
USE toolkit_db;
```

See if you can access the topics table:
```SQL
SELECT * FROM topics_astr;
```