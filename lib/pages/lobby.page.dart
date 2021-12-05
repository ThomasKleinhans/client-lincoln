import 'package:client/components/LButton.component.dart';
import 'package:client/components/LHeader.conponent.dart';
import 'package:client/const/colors.dart';
import 'package:client/controllers/lobby.controller.dart';
import 'package:client/models/player.model.dart';
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

  List<Player> players = [
    Player(name: "Thomas1"),
    Player(name: "Justine2"),
    Player(name: "Thomas3"),
    Player(name: "Justine4"),
    Player(name: "Thomas5"),
    Player(name: "Justine6"),
    Player(name: "Thomas7"),
    Player(name: "Justine8"),
    Player(name: "Thomas9"),
    Player(name: "Justine10"),
    Player(name: "Justine11"),
    Player(name: "Thomas12"),
    Player(name: "Justine13"),
    Player(name: "Thomas14"),
    Player(name: "Justine15"),
    Player(name: "Justine16"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LColors.light,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 50), child: LHeader()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 270,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Code de la partie",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: LColors.dark,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 40),
                            child: Obx(
                              () => Text(
                                lobbyController.currentLobby.value.code,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: LColors.dark,
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    players.length.toString(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: LColors.dark,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "/9",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: LColors.dark,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Icon(
                                    Icons.account_box,
                                    color: LColors.dark,
                                  )
                                ])),
                        Row(children: [
                          Flexible(
                            child: Container(
                                height: 400,
                                child: Obx(
                                  () => ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: lobbyController
                                          .currentLobby.value.players.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return index % 2 == 0
                                            ? UserItem(
                                                name: lobbyController
                                                    .currentLobby
                                                    .value
                                                    .players[index]
                                                    .name,
                                                isHost: false,
                                              )
                                            : Container();
                                      }),
                                )),
                          ),
                          const VerticalDivider(
                            color: LColors.grey,
                            thickness: 1,
                            width: 20,
                            indent: 20,
                            endIndent: 0,
                          ),
                          Flexible(
                            child: Container(
                                height: 400,
                                child: Obx(
                                  () => ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: lobbyController
                                          .currentLobby.value.players.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return index % 2 == 1
                                            ? UserItem(
                                                name: lobbyController
                                                    .currentLobby
                                                    .value
                                                    .players[index]
                                                    .name,
                                                isHost: false,
                                              )
                                            : Container();
                                      }),
                                )),
                          ),
                        ]),
                        const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Répartissez tous les joueurs dans deux salles séparés avant de lancer une partie.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: LColors.dark,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: LButton(
                            label: "Option de la partie",
                            onPressed: () {},
                            color: LColors.lightgrey,
                            textColor: LColors.dark,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: LButton(
                            label: "Commencer la partie",
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  const UserItem({Key? key, required this.name, required this.isHost})
      : super(key: key);

  final String name;
  final bool isHost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Text(
            name,
            style: TextStyle(
              color: isHost ? LColors.blue : LColors.dark,
              fontSize: 14,
            ),
          ),
        ),
        const Divider(
          color: LColors.grey,
        )
      ]),
    );
  }
}
