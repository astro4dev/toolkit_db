# The OAD Data Science Toolkit Database 

The OAD Data Science Toolkit Database (```toolkit_db```) is a relational SQL database used for the curriculum map of the OAD Data Science Toolkit. It is not ready yet, and is very much to be considered work in progress.

## Create Tables

To creat the tables you need to first create the database using MySQL:

```SQL
CREATE DATABASE toolkit_db;
```

Open up ```src/create_tables.py``` and change the password to the password of your mysql account. Then run ```create_tables.py``` to create the tables.

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