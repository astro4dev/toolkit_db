import MySQLdb as mdb
import sys
import configparser

def connect_db(database):
	# Connect to the database (DB) and fetch the version of the DB.
	config 		= configparser.ConfigParser()
	config.read('/etc/mysql/user.cnf')
	username 	= config.get('client', 'user')
	password 	= config.get('client', 'password')
	hostname 	= config.get('client', 'host')
	db 			= mdb.connect(hostname,username,password,database)
	cur 		= db.cursor()
	cur.execute("SELECT VERSION()")
	ver 		= cur.fetchone()
	print ("\nDatabase version : %s " % ver,"\n")
	return db, cur

def add_column(cur, table, new_column, data_type, position, prev_entry):
	# Add a column to the table.
	cur.execute("ALTER TABLE "+table+" ADD "+new_column+" "+data_type+" "+position+" "+prev_entry+";")

def update_cell(cur, table, column, new_value, Id):
	cur.execute("UPDATE "+table+" SET "+column+"=\""+new_value+"\" WHERE Id = "+Id+";")
	cur.execute("UPDATE "+table+" SET last_updated = CURRENT_TIMESTAMP WHERE Id = "+Id+";")
	
def connect_tables(cur, table, Id_1, Id_2, Value_1, Value_2):
	# Look at the name of the table. It will have the form
	# table1__table2. So the subscript 1 refers to table 1 etc.
	cur.execute("INSERT INTO "+table+" ("+Id_1+","+Id_2+") VALUES('"+Value_1+"','"+Value_2+"');")

#def table_entry(cur, table, column, entry, Id):
#	# Add the topics fo the database.
#	cur.execute("INSERT INTO "+table+"("+column+") VALUES(\""+entry+"\") WHERE Id = "+Id+";")


def main():
	
	# Connect to the database
	db, cur 	= connect_db('toolkit_db')

	# Add column
	#add_column(cur, "examples", "title", "VARCHAR(255)", "AFTER", "creation_time")

	# Works well
	#update_cell(cur, "examples", "title", "Predicting Pulsar Candidates", "1")
	#update_cell(cur, "examples", "links", "https://github.com/astro4dev/OAD-Data-Science-Toolkit/blob/master/Teaching%20Materials/Machine%20Learning/Supervised%20Learning/Examples/PPC/Predicting_Pulsar_Candidates.ipynb", "1")

	#
	#connect_tables(cur, "topics_astr__examples", "topic_id", "example_id", "1", "2")
	connect_tables(cur, "skills__examples", "skill_id", "example_id", "4", "1")
	connect_tables(cur, "skills__examples", "skill_id", "example_id", "4", "2")



	# Ignore this
	#table_entry(cur, "examples", "title", "https://raw.githubusercontent.com/astro4dev/OAD-Data-Science-Toolkit/master/Teaching%20Materials/Machine%20Learning/Supervised%20Learning/Examples/PPC/Predicting_Pulsar_Candidates.ipynb", "1")
	#print("Table populated.\n")
	
	# Commit the changes and close the database
	db.commit()
	db.close()

if __name__ == '__main__':
    main()