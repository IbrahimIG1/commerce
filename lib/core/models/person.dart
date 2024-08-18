// ignore_for_file: public_member_api_docs, sort_constructors_first

class PersonModel {
  final String name;
  final String phone;
  final String image;
  PersonModel({required this.name, required this.phone, required this.image});


  // String toJson() => json.encode(toMap());

  // factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
