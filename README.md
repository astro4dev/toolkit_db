# toolkit_db

The OAD Data Science Toolkit Database. This is the relational SQL database which will power the curriculum map of the OAD Data Science Toolkit. It is not ready yet, and is very much to be considered work in progress.

## Create Tables

To creat the tables you need to first create the database using MySQL:

```SQL
CREATE DATABASE toolkit_db;
```

Then from the _src_ directory run ```create_tables.py```

If the database already exists and you want to start anew:

```SQL
DROP DATABASE IF EXISTS toolkit_db;
```