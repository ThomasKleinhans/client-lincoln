class Player {
  String name;
  bool isHost;

  Player({required this.name, required this.isHost});

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(name: json['name'], isHost: json['isHost']);
  }
}
