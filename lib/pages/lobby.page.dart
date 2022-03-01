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

  final players = [
    Player(name: "Thomas", isHost: true),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
    Player(name: "Thomas", isHost: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: LColors.light,
      body: SafeArea(
        child: Column(
          children: [
            const LHeader(),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: const [
                      Text(
                        "Code de la partie",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: LColors.dark,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "6543",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: LColors.dark,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Row(
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
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              ListView.builder(
                                  itemCount: players.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return index % 2 == 1
                                        ? Text(players[index].name)
                                        : Container();
                                  })
                            ],
                          ),
                          Column(
                            children: [
                              ListView.builder(
                                  itemCount: players.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return index % 2 == 0
                                        ? Text(players[index].name)
                                        : Container();
                                  })
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: LButton(
                        label: "Option de la partie",
                        onPressed: () {},
                        color: LColors.lightgrey,
                        textColor: LColors.dark,
                      ),
                    ),
                    LButton(
                      label: "Commencer la partie",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
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
