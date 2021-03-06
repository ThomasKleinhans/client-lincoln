import 'package:client/components/LButton.component.dart';
import 'package:client/components/LHeader.conponent.dart';
import 'package:client/const/colors.dart';
import 'package:client/const/input_styles.dart';
import 'package:client/services/socket.service.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pseudoController = TextEditingController();
  final codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: LColors.light,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LHeader(),
            const Expanded(
              flex: 4,
              child: Image(image: AssetImage("assets/img/lincoln-logo.png")),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: TextFormField(
                          style: textStyleLight,
                          controller: pseudoController,
                          textAlign: TextAlign.center,
                          decoration: textInputDecorationLight.copyWith(
                              hintText: "Ton pseudo"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: TextFormField(
                          controller: codeController,
                          style: textStyleLight,
                          textAlign: TextAlign.center,
                          decoration: textInputDecorationLight.copyWith(
                              hintText: "Code de la partie"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: LButton(
                          label: "Rejoindre une partie",
                          onPressed: () {
                            var code = codeController.value.text;
                            var pseudo = pseudoController.value.text;
                            SocketService().socket.emit("join-lobby",
                                {'lobbyId': code, 'playerName': pseudo});
                            //Navigator.pushNamed(context, '/lobby');
                          },
                          color: LColors.lightgrey,
                          textColor: LColors.dark,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: LButton(
                          label: "Cr??er une partie",
                          onPressed: () {
                            var pseudo = pseudoController.value.text;
                            SocketService()
                                .socket
                                .emit("create-lobby", {'playerName': pseudo});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
