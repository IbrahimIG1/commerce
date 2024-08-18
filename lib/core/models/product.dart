//* this class to definition product details
class Product {
  final String name; // book - shirt
  final String price; // 100 EGP
  final String discount; // 10%
  final String productType; // clothes - school tools
  final String productPicutre; // clothes - school tools
  Product({
    required this.name,
    required this.price,
    required this.discount,
    required this.productType,
    required this.productPicutre,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'product_picutre': productPicutre,
      'price': price,
      'discount': discount,
      'product_type': productType,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] as String,
      productPicutre: json['product_picutre'] as String,
      price: json['price'] as String,
      discount: json['discount'] as String,
      productType: json['product_type'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
