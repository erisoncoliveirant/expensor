import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String? username;
  final String? id;

  UserModel({this.id, this.username});


  static UserModel fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot){
    return UserModel(
      username: snapshot['username'],
      id: snapshot['id'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "username": username,
      "id": id,
    };
  }
}