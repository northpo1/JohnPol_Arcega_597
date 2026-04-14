class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  //convert json
  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], name: json['name'], email: json['email']);
  }
  //convert User object to Json
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email};
  }
}
