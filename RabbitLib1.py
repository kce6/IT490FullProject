import pika
import json



# Initializing Rabbitmq
class Rabbitmq:
	connection = ''
	channel = ''

	def __init__(self):		
		credentials = pika.PlainCredentials('test', 'test')
		parameters = pika.ConnectionParameters('165.227.179.111',5672,'/',credentials)
		self.connection = pika.BlockingConnection(parameters)
		self.channel = self.connection.channel()

	def Authentication(self):
		channel = self.channel
		channel.exchange_declare(exchange='router',
								exchange_type='direct')
		result = channel.queue_declare(exclusive=True)
		queue_name = result.method.queue
		channel.queue_bind(exchange='router',
                       queue=queue_name,
                       routing_key='database')

		channel.basic_consume(self.callback,
                      queue=queue_name,
                      no_ack=True)
		print(' [*] Waiting for messages. To exit press CTRL+C')
		channel.start_consuming()

	def callback(self,ch, method, properties, body):
		data = json.loads(body)
		print(" [x] Received %r" % data)		
		print("%r" % type(data))

	def Register(self):
		channel = self.channel
		channel.exchange_declare(exchange='router',
								exchange_type='direct')
		result = channel.queue_declare(exclusive=True)
		queue_name = result.method.queue
		channel.queue_bind(exchange='router',
                       queue=queue_name,
                       routing_key='database')

		channel.basic_consume(self.callback,
                      queue=queue_name,
                      no_ack=True)
		print(' [*] Waiting for messages. To exit press CTRL+C')
		channel.start_consuming()	
		




		
#main function
def main(): 
	Rabbitmq_obj = Rabbitmq()
	Rabbitmq_obj.Authentication()



#Running main routine
if __name__ == "__main__":
    main()