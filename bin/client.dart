import 'dart:io';

void main(List<String> args){
  RawDatagramSocket.bind('192.168.1.31',9000).then((RawDatagramSocket socket){
    print('Sending from ${socket.address.address}:${socket.port}');
    int port = 9000;
    socket.send('Lista esta tavuel nojoda\n'.codeUnits, 
      InternetAddress('181.235.94.157'), 9000);
  });
}