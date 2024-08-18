//* this class to definition product details
class Product {
  final String name; // book - shirt
  final String price; // 100 EGP
  final String discount; // 10%
<<<<<<< HEAD
  
=======
>>>>>>> 97e75549b3b8e040ba641b8bf1c68019d8ee8de1
  final String productType; // clothes - school tools
  final String productPicutre; // clothes - school tools
  Product({
    required this.name,
    required this.price,
    required this.discount,
<<<<<<< HEAD
    
=======
>>>>>>> 97e75549b3b8e040ba641b8bf1c68019d8ee8de1
    required this.productType,
    required this.productPicutre,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'product_picutre': productPicutre,
      'price': price,
      'discount': discount,
<<<<<<< HEAD
      
=======
>>>>>>> 97e75549b3b8e040ba641b8bf1c68019d8ee8de1
      'product_type': productType,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
<<<<<<< HEAD
      name: map['name'] as String,
      productPicutre: map['product_picutre'] as String,
      price: map['price'] as String,
      discount: map['discount'] as String,
      
      productType: map['product_type'] as String,
=======
      name: json['name'] as String,
      productPicutre: json['product_picutre'] as String,
      price: json['price'] as String,
      discount: json['discount'] as String,
      productType: json['product_type'] as String,
>>>>>>> 97e75549b3b8e040ba641b8bf1c68019d8ee8de1
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
