import 'package:client/models/lobby.model.dart';
import 'package:get/get.dart';

class LobbyController extends GetxController {
  // ignore: prefer_const_constructors
  Rx<Lobby> currentLobby = Lobby(code: "0000").obs;
}
