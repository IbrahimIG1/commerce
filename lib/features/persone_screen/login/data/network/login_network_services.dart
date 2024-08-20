import 'package:firebase_auth/firebase_auth.dart';
import 'package:g_commerce/core/network/firebase_factory.dart';

class LoginNetworkServices {
  final FirebaseFactory _firebaseFactory;
  LoginNetworkServices(this._firebaseFactory);

  void login({
    required String email,
    required String password,
  }) async{
    FirebaseAuth firebaseAuth = _firebaseFactory.getFirebaseAuth();
    await firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(
          '>>>>>>>>>> login Done in login services ${value.user!.email} + ${value.user!}');
    }).catchError((error) {
      print(
          "<<<<<<<<<<<<<<<<<<< Error in Login network services ${error.toString()}>>>>>>>>>>>>>>>>>>>>>>");
    });
  }
}
