import 'package:client/pages/home.page.dart';
import 'package:client/pages/lobby.page.dart';
import 'package:flutter/material.dart';

class LRouter extends StatelessWidget {
  const LRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lincoln Game",
      routes: {
        Home.routeName: (context) => const Home(),
        Lobby.routeName: (context) => const Lobby(),
      },
    );
  }
}
