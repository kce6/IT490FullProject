import pika
import sys
import json

credentials = pika.PlainCredentials('test', 'test')
parameters = pika.ConnectionParameters('165.227.179.111',5672,'/',credentials)

connection = pika.BlockingConnection(parameters)
channel = connection.channel()

channel.exchange_declare(exchange='router',
                         exchange_type='direct')

routing_key = 'database' 
data = sys.argv[1]
message =  json.loads(data)
print type(message)
channel.basic_publish(exchange='router',
                      routing_key=routing_key,
                      body=json.dumps(message))
print(" [x] Sent %r:%r" % (routing_key, message))
connection.close()