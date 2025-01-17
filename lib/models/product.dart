//* this class to definition product details
class Product {
  final String name; // book - shirt
  final String price; // 100 EGP
  final String discount; // 10%
  final String productOwner; // algammal
  final String productType; // clothes - school tools
  final String productPicutre; // clothes - school tools
  Product({
    required this.name,
    required this.price,
    required this.discount,
    required this.productOwner,
    required this.productType,
    required this.productPicutre,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product_picutre': productPicutre,
      'price': price,
      'discount': discount,
      'product_owner': productOwner,
      'product_type': productType,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] as String,
      productPicutre: map['product_picutre'] as String,
      price: map['price'] as String,
      discount: map['discount'] as String,
      productOwner: map['product_owner'] as String,
      productType: map['product_type'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
