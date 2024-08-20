import 'package:firebase_auth/firebase_auth.dart';
import 'package:g_commerce/core/network/firebase_factory.dart';

class RegisterNetworkServices {
  FirebaseFactory firebaseFactory;
  RegisterNetworkServices(this.firebaseFactory);

  void register({
    required String email,
    required String password,
  }) async {
    FirebaseAuth firebaseAuth = firebaseFactory.getFirebaseAuth();
    await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(
          '>>>>>>>>>> register Done in login services ${value.user!.email} + ${value.user!}');
    }).catchError((error) {
      print(
          "<<<<<<<<<<<<<<<<<<< Error in register network services ${error.toString()}>>>>>>>>>>>>>>>>>>>>>>");
    });
  }
}
