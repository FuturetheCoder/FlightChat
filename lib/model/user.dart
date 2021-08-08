//@dart=2.9
import 'package:meta/meta.dart';

import '../utils.dart';

class UserField {
  static final String lastMessageTime = 'lastMessageTime';
}

class User {
  final String idUser;
  final String name;
  final String urlAvatar; 
  final String designation;
  final String company;
  final DateTime lastMessageTime;

  const User({
    this.idUser,
    @required this.company,
    @required this.designation,
    @required this.name,
    @required this.urlAvatar,
    @required this.lastMessageTime,
  });

  User copyWith({
    String idUser,
    String designation,
    String company,
    String name,
    String urlAvatar,
    String lastMessageTime,
  }) =>
      User(
        idUser: idUser ?? this.idUser,
        company: company ?? this.company,
        designation: designation ?? this.designation,
        name: name ?? this.name,
        urlAvatar: urlAvatar ?? this.urlAvatar,
        lastMessageTime: lastMessageTime ?? this.lastMessageTime,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        idUser: json['idUser'],
        company: json['company'],
        designation: json['designation'],
        name: json['name'],
        urlAvatar: json['urlAvatar'],
        lastMessageTime: Utils.toDateTime(json['lastMessageTime']),
      );

  Map<String, dynamic> toJson() => {
        'company': company,
        'designation': designation, 
        'idUser': idUser,
        'name': name,
        'urlAvatar': urlAvatar,
        'lastMessageTime': Utils.fromDateTimeToJson(lastMessageTime),
      };
}
