import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:g_commerce/core/network/firebase_factory.dart';

class AdminNetworkServices {
  final FirebaseFactory firebaseFactory;
  AdminNetworkServices(this.firebaseFactory);
  Future<void> addAdmin(Map<String, dynamic> data) async {
    FirebaseFirestore firebaseFirestore =
        firebaseFactory.getFirebaseFirestore();
    await firebaseFirestore.collection('Admin').add(data).then((value) {
      print("<<<<<<<<<<<<<add admin data done>>>>>>>>>>>>>>>>>>");
      print(value.id);
    }).catchError((error) {
      print("<<<<<<<<<<<<<Error in add admin data >> ${error.toString()}");
    });
  }

  Future<void> addItem(Map<String, dynamic> data) async {
    FirebaseFirestore firebaseFirestore =
        firebaseFactory.getFirebaseFirestore();
    await firebaseFirestore
        .collection('Admin')
        .doc('skkAou5NwwBv9MOb7PQi')
        .collection('items')
        .add(data)
        .then((value) {
      print("<<<<<<<<<<<<<add item data done>>>>>>>>>>>>>>>>>>");
      print(value.id);
    }).catchError((error) {
      print("<<<<<<<<<<<<<Error in add item data >> ${error.toString()}");
    });
    ;
  }
}
