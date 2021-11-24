import 'package:meta/meta.dart' show required;
import 'package:flutter/cupertino.dart';

class User{
  final int id;
  final String email, firstName, lastName, avatar;

  User({
  required this.id,
  required this.email,
  required this.firstName,
  required this.lastName,
  required this.avatar,
  });

  static User fromJson(Map<String, dynamic> json){
    return User(
    id: json['id'],
    email: json['email'],
    firstName: json['first_name'],
    lastName: json['last_name'],
    avatar: json ['avatar'],
  );
  }
}