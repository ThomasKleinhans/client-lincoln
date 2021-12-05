class Player {
  String name;

  Player({required this.name});

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(name: json['name']);
  }
}
