// ignore: library_prefixes
import 'package:client/const/colors.dart';
import 'package:client/controllers/lobby.controller.dart';
import 'package:client/models/lobby.model.dart';
import 'package:get/get.dart';
// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  IO.Socket socket = IO.io(
      'http://192.168.1.18:4000',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .build());

  LobbyController lobbyController = Get.put(LobbyController());

  void startConnection() {
    socket.connect();
  }

  void startListeners() {
    socket.on('send-error', (data) {
      Get.snackbar("Erreur", data,
          backgroundColor: LColors.red,
          colorText: LColors.light,
          snackPosition: SnackPosition.BOTTOM);
    });

    socket.on("goToRoute", (data) {
      Get.toNamed(data);
    });

    socket.on("update-lobby", (data) {
      lobbyController.currentLobby.value = Lobby.fromJson(data);
    });
  }
}
