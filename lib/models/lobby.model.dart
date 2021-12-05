import 'package:client/models/player.model.dart';

class Lobby {
  String code = '0000';
  List<Player> players = List.empty();

  Lobby({required this.code, required this.players});

  factory Lobby.fromJson(Map<String, dynamic> json) {
    List<Player> players = [];
    json['players'].forEach((element) {
      players.add(Player.fromJson(element));
    });

    return Lobby(code: json['code'].toString(), players: players);
  }
}
