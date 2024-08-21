import matplotlib.pyplot as plt
import psycopg2
from psycopg2 import sql

HOST = 'localhost'
PORT = '5432'
USER = 'jtoulous'
PASSWORD = 'mysecretpassword'
DATABASE = 'piscineds'


def PieChart(nb_cart, nb_purchase, nb_view, nb_remove):
    labels = ['cart', 'purchase', 'view', 'remove_from_cart']
    sizes = [nb_cart, nb_purchase, nb_view, nb_remove]
    colors = ['gold', 'lightskyblue', 'lightcoral', 'lightgreen']

    plt.pie(
            sizes, 
            labels=labels, 
            colors=colors,
            autopct='%1.1f%%', 
        )
    plt.show()


def GetCount(connec, event_type):
    cursor = connec.cursor()
    cursor.execute(f'SELECT COUNT(*) FROM customers WHERE event_type = \'{event_type}\'')
    result = cursor.fetchone()
    return result[0]


if __name__ == '__main__':
    try:
        connection = psycopg2.connect(
            host=HOST,
            port=PORT,
            user=USER,
            password=PASSWORD,
            dbname=DATABASE
        )
        
        nb_cart = GetCount(connection, 'cart')
        nb_purchase = GetCount(connection, 'purchase')
        nb_view = GetCount(connection, 'view')
        nb_remove = GetCount(connection, 'remove_from_cart')

        PieChart(nb_cart, nb_purchase, nb_view, nb_remove)


    except Exception as error:
        print(error)