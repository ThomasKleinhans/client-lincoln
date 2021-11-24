// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  IO.Socket socket = IO.io(
      'http://192.168.1.18:4000',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .build());

  void startConnection() {
    socket.connect();
  }
}
