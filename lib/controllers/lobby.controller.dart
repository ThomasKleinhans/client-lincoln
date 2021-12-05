import 'package:client/models/lobby.model.dart';
import 'package:get/get.dart';

class LobbyController extends GetxController {
  Rx<Lobby> currentLobby = Lobby(code: "0000", players: []).obs;
}
