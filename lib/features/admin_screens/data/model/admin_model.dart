class AdminModel {
  String name;
  String phone;
  String adress;
  String categoryName;
  String shopName;
  AdminModel({
    required this.name,
    required this.phone,
    required this.adress,
    required this.categoryName,
    required this.shopName,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'phone': phone,
      'adress': adress,
      'category_name': categoryName,
      'shop_name': shopName,
    };
  }

  factory AdminModel.fromJson(Map<String, dynamic> json) {
    return AdminModel(
      name: json['name'] as String,
      phone: json['phone'] as String,
      adress: json['adress'] as String,
      categoryName: json['category_name'] as String,
      shopName: json['shop_name'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory AdminModel.fromJson(String source) => AdminModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
