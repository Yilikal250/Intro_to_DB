import mysql.connector
from mysql.connector import errorcode

def create_database(cursor):
    try:
        cursor.execute("CREATE DATABASE alx_book_store")
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_DB_CREATE_EXISTS:
            print("Database 'alx_book_store' already exists.")
        else:
            print(f"Failed to create database: {err}")
            exit(1)
def main():
    try:
        # Connect to MySQL server (replace with your own connection details)
        cnx = mysql.connector.connect(
            host="localhost",
            user="your_username",
            password="your_password"
        )
        cursor = cnx.cursor()

        # Create the database
        create_database(cursor)

        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        # Close the connection
        try:
            if cursor:
                cursor.close()
            if cnx:
                cnx.close()
        except NameError:
            pass