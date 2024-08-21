import matplotlib.pyplot as plt
import psycopg2
from psycopg2 import sql

HOST = 'localhost'
PORT = '5432'
USER = 'jtoulous'
PASSWORD = 'mysecretpassword'
DATABASE = 'piscineds'

if __name__ == '__main__':
    try:
        connection = psycopg2.connect(
            host=HOST,
            port=PORT,
            user=USER,
            password=PASSWORD,
            dbname=DATABASE
        )
        
        cursor = connection.cursor()
        cursor.execute('SELECT * FROM customers WHERE EXTRACT(MONTH FROM event_time) = 10')
        result = cursor.fetchone()
        breakpoint()

    except Exception as error:
        print(error)