import 'package:firebase_auth/firebase_auth.dart';
import 'package:g_commerce/core/network/firebase_factory.dart';

abstract class AuthNetworkeServices {
  Future<void> login(String email, String password);

  Future<void> register(String email, String password);
}

class AuthNetworkServicesImpl implements AuthNetworkeServices {
  final FirebaseFactory firebaseFactory = FirebaseFactoryImpl();

  @override
  Future<void> login(String email, String password) async {
    FirebaseAuth firebaseAuth = firebaseFactory.getFirebaseAuth();
    await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> register(String email, String password) async {
    FirebaseAuth firebaseAuth = firebaseFactory.getFirebaseAuth();
    await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}
