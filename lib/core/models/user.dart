import 'package:g_commerce/core/models/person.dart';

class UserModel extends PersonModel {
  UserModel({required super.name, required super.phone, required super.image});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'phone': phone,
      'image': image,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String,
    );
  }
}
