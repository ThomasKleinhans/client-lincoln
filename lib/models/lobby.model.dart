class Lobby {
  String code;

  Lobby({required this.code});

  factory Lobby.fromJson(Map<String, dynamic> json) {
    return Lobby(code: json['code']);
    // TODO map json user data from server to Player users (use Player.fromJson(data))
  }
}
