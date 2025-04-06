import mysql.connector
from mysql.connector import Error

def create_mysql_connection():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='1234',
            database='users_db'
        )
        return connection
    except Error as e:
        print(f"Error connecting to MySQL: {e}")
        return None
