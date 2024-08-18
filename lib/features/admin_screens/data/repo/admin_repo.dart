import 'package:g_commerce/core/models/admin.dart';
import 'package:g_commerce/core/models/product.dart';
import 'package:g_commerce/features/admin_screens/data/network/admin_network_services.dart';

class AdminRepo {
  final AdminNetworkServices _adminAddDataServices;
  AdminRepo(this._adminAddDataServices);

  Future<void> addAdminData() async {
    AdminModel adminModel = AdminModel(
      name: "reda algammal",
      phone: "011376961",
      image: "image",
      adress: "main street",
      categoryName: "tools",
      shopName: "algammal",
    );

    await _adminAddDataServices.addAdmin(adminModel.toJson());
  }

  Future<void> addItemData() async {
    Product product = Product(
        name: 'pen',
        price: '5.00 Egp',
        discount: '2%',
        productType: 'School tools',
        productPicutre: 'productPicutre');

    await _adminAddDataServices.addItem(product.toJson());
  }
}
