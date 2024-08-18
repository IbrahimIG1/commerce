import 'package:firebase_auth/firebase_auth.dart';
import 'package:g_commerce/core/network/firebase_factory.dart';

abstract class NetworkeServices {
  // factory NetworkeServices() => NetworkeServices();
  // NetworkeServices();
  final FirebaseFactory firebaseFactory = FirebaseFactory();

  Future<void> login(String email, String password) async {
    FirebaseAuth firebaseAuth = firebaseFactory.getFirebaseAuth();
    await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> register(String email, String password) async {
    FirebaseAuth firebaseAuth = firebaseFactory.getFirebaseAuth();
    await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  
}
