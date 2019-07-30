import MySQLdb

db = MySQLdb.connect(host="localhost", 
	user="root", 
	password="",
	db="test", 
	charset="utf8")

cursor = db.cursor()

sql = """CREATE TABLE entries(
	id INT AUTO_INCREMENT,
	title TEXT,
	content TEXT,
	post_on DATETIME,
	primary key(id)
	)"""

#cursor.execute(sql)

cursor.execute("SELECT VERSION()")
data = cursor.fetchone()
print("Database version : %s " % data)
db.close()