import MySQLdb as mdb
import sys

def connect_db(database,password):
	# Connect to the database (DB) and fetch the version of the DB.
	db = mdb.connect("localhost","root",password,database)
	cur = db.cursor()
	cur.execute("SELECT VERSION()")
	ver = cur.fetchone()
	print ("\nDatabase version : %s " % ver,"\n")
	return db, cur

def create_table(cur, table):
	# Create the topics DB
	try:
		# Drop table if it already exists
		cur.execute("DROP TABLE IF EXISTS "+table+";")
	except:
		print("You need to check the code... Something went wrong")

	try:
		cur.execute("CREATE TABLE "+table+"(Id INT PRIMARY KEY AUTO_INCREMENT, creation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, "+table+" VARCHAR(255));")
		db.commit()
		print(table+" table created.\n")
	except:
		print("Table already exists!\n")

def populate_topics(cur, table, topics):
	# Add the topics fo the database.
	cur.execute("INSERT INTO "+table+"("+table+") VALUES(\""+topics+"\");")

def main():

	# Parameters
	password 	= 'password'
	database 	= 'toolkit_db'
	tables 		= ['topics_astr','subtopics_astr']
	topics 		= ['Galaxies', 'Cosmology', 'Planetary', 'High Energy', 'Solar & Stellar']
	subtopics 	= ['Pulsars','Galaxy Morphology']
	all_topics  = [topics, subtopics]
	
	# Connect to the database
	db, cur = connect_db(database,password)

	# Create and populate the astronomy topic table
	for i in range(len(tables)):
		create_table(cur, tables[i])
		for j in range(len(all_topics[i])):
			populate_topics(cur, tables[i], all_topics[i][j])
		print("Table populated.\n")
	
	# Commit the changes and close the database
	db.commit()
	db.close()

if __name__ == '__main__':
    main()