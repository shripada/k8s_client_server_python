# Import socket module 
import socket                
  
def connect():
  # Create a socket object 
  s = socket.socket()          
    
  # Define the port on which you want to connect 
  port = 5300                
    
  # connect to the server on local computer 
  s.connect(('server', port)) 
    
  # receive data from the server 
  print(s.recv(1024))
  # close the connection 
  s.close()      


if __name__ == '__main__':
  connect()