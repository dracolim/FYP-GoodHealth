import pika

print(' Connecting to server ...')
connectionsuccess = True
try:
    # connection = pika.BlockingConnection(pika.ConnectionParameters(host="localhost:15672"))
    # url = 'amqp://guest:guest@172.27.0.2:5672/rabbitmq'
    url = 'amqp://guest:guest@localhost:5672'
    params = pika.URLParameters(url)
    params.socket_timeout = 5
    connection = pika.BlockingConnection(params)
# except pika.exceptions.AMQPConnectionError as exc:
#     print("Failed to connect to RabbitMQ service. Message wont be sent.")
#     connectionsuccess = False

except Exception as exc:
    print("Failed to connect to RabbitMQ service. Message wont be sent:", exc)
    connectionsuccess = False

from sqlalchemy import create_engine
 
# DEFINE THE DATABASE CREDENTIALS
user = 'root'
password = 'root'
host = '127.0.0.1'
port = 3306
database = 'SingHealth'
 
# PYTHON FUNCTION TO CONNECT TO THE MYSQL DATABASE AND
# RETURN THE SQLACHEMY ENGINE OBJECT
def get_connection():
    return create_engine(
        url="mysql+pymysql://{0}:{1}@{2}:{3}/{4}".format(
            user, password, host, port, database
        )
    )


try:
       
    # GET THE CONNECTION OBJECT (ENGINE) FOR THE DATABASE
    engine = get_connection()
    print(
        f"Connection to the {host} for user {user} created successfully.")
    
    conn = engine.connect()
except Exception as ex:
    print("Connection could not be made due to the following error: \n", ex)

if connectionsuccess == True:
    channel = connection.channel()
    channel.queue_declare(queue='task_queue', durable=True)

    print(' Waiting for messages...')


    def callback(ch, method, properties, body):
        import time
        message = body.decode()
        # print(method.delivery_tag, ch, method, properties, body)
        print(method.routing_key)
        print(" Received %s" % body.decode())
        stmt = "INSERT INTO user_account (time, message, queue) VALUES ('" + str(time.time()) +"','" + message + "','" + method.routing_key + "')"
        conn.execute(stmt)
        print(" Done")

        ch.basic_ack(delivery_tag=method.delivery_tag)

    channel.basic_qos(prefetch_count=1)
    channel.basic_consume(queue='task_queue', on_message_callback=callback)
    channel.start_consuming()