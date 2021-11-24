import 'package:client/components/LRouter.component.dart';
import 'package:flutter/material.dart';
import 'package:client/services/socket.service.dart';

void main() {
  runApp(const App());
  SocketService().startConnection();
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const LRouter();
  }
}
