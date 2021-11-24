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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LColors.light,
      body: Column(
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
                      const Image(
                        image: AssetImage("assets/img/lincoln-logo.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: TextFormField(
                          style: textStyleLight,
                          textAlign: TextAlign.center,
                          decoration: textInputDecorationLight.copyWith(
                              hintText: "Ton pseudo"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          style: textStyleLight,
                          textAlign: TextAlign.center,
                          decoration: textInputDecorationLight.copyWith(
                              hintText: "Code de la partie"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: LButton(
                          label: "Rejoindre une partie",
                          onPressed: () {
                            SocketService().socket.emit("join-room",
                                {'roomId': '0000', 'playerName': 'Toto'});
                            //Navigator.pushNamed(context, '/lobby');
                          },
                          color: LColors.lightgrey,
                          textColor: LColors.dark,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: LButton(
                          label: "Créer une partie",
                          onPressed: () {
                            Navigator.pushNamed(context, '/lobby');
                          },
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
