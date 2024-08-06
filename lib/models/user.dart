// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  final String? name;
  final String? phone;
  final String? image;
  UserModel({this.name, this.phone, this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name!,
      'phone': phone!,
      'image': image!,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name']!,
      phone: map['phone']!,
      image: map['image'] ?? "",
    );
  }

  // String toJson() => json.encode(toMap());

  // factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
