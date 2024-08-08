// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:g_commerce/core/models/product.dart';
import 'package:g_commerce/core/models/user.dart';

class AdminModel extends UserModel {
  // String name;
  // String phone;
  // String? profileImage;
  Product product;
  AdminModel({
    // required this.name,
    // required this.phone,
    // this.profileImage,
    String? name,
    String? image,
    String? phone,
    required this.product,
  }) : super(image: image!, name: name!, phone: phone!);
// @override
  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      // 'name': name,
      // 'phone': phone,
      // 'profile_image': profileImage,
      
      'product': product.toMap(),
    };
  }

  factory AdminModel.fromMap(Map<String, dynamic> map) {
    return AdminModel(
      // name: map['name'] as String,
      // phone: map['phone'] as String,
      // profileImage:
      //     map['profile_image'] != null ? map['profile_image'] as String : null,
      product: Product.fromMap(map['product'] as Map<String, dynamic>),
    );
  }

  // String toJson() => json.encode(toMap());

  // factory AdminModel.fromJson(String source) => AdminModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
