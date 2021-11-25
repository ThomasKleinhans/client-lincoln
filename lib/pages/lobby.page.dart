import 'package:client/const/colors.dart';
import 'package:client/controllers/lobby.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lobby extends StatefulWidget {
  const Lobby({Key? key}) : super(key: key);
  static const routeName = '/lobby';

  @override
  _LobbyState createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  LobbyController lobbyController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LColors.light,
      body: Obx(
        () => Column(
          children: [Text(lobbyController.currentLobby.value.code)],
        ),
      ),
    );
  }
}
