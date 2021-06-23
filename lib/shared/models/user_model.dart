import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, required this.photoURL});

  Map<String, dynamic> toMap() => {"name": name, "photoURL": photoURL};
  String toJSON() => json.encode(toMap());
}
