import 'package:client/const/colors.dart';
import 'package:flutter/material.dart';

class Lobby extends StatefulWidget {
  const Lobby({Key? key}) : super(key: key);
  static const routeName = '/lobby';

  @override
  _LobbyState createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LColors.light,
      body: Column(
        children: const [Text('Lobby')],
      ),
    );
  }
}
