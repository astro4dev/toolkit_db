# The OAD Data Science Toolkit Database 

The OAD Data Science Toolkit Database (```toolkit_db```) is a relational SQL database used for the curriculum map of the OAD Data Science Toolkit. It is not ready yet, and is very much to be considered work in progress.

## Create Tables

To creat the tables you need to first create the database using MySQL:

```SQL
CREATE DATABASE toolkit_db;
```

Before creating tables we want to ensure we are using the correct credentials in the ```create_tables.py``` script. On a Debian system this is done by typing the follwing command:

```sh
sudo cp /etc/mysql/debian.cnf /etc/mysql/user.cnf
sudo chown user:user user.cnf
```
and editing the ```[client]``` part of the file.

Make sure you use your own username instead of user.

Run ```create_tables.py``` to create the tables.

If the database already exists and you want to start anew:

```SQL
DROP DATABASE IF EXISTS toolkit_db;
```

## Look at the tables

In the MySQL window select the ```toolkit_db``` database:

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