import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:g_commerce/firebase_options.dart';

abstract class FirebaseFactory {
  Future<void> initFirebase();
  FirebaseAuth getFirebaseAuth();
  FirebaseFirestore getFirebaseFirestore();
}

class FirebaseFactoryImpl implements FirebaseFactory {
  FirebaseAuth? _firebaseAuth;
  FirebaseFirestore? _firebaseFirestore;

  //* init Firebase
  @override
  Future<void> initFirebase() async {
    await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform)
        .then((value) {
      print("init Firebase");
    });
  }

//* get Firebase Auth
  @override
  FirebaseAuth getFirebaseAuth() {
    if (_firebaseAuth == null) {
      print('>>>>>>>>>>>>>>>>> firebaseAuth is null<<<<<<<<<<<<<<<<<<<');
      return _firebaseAuth = FirebaseAuth.instance;
    } else {
      print('>>>>>>>>>>>>>>>>> firebaseAuth have a value <<<<<<<<<<<<<<<<<<<');
      return _firebaseAuth!;
    }
  }

//* get Firebase Firestore
  @override
  FirebaseFirestore getFirebaseFirestore() {
    if (_firebaseFirestore == null) {
      print('>>>>>>>>>>>>>>>>> firebaseFirestore is null<<<<<<<<<<<<<<<<<<<');

      return _firebaseFirestore = FirebaseFirestore.instance;
    } else {
      print(
          '>>>>>>>>>>>>>>>>> firebaseFirestore have a value <<<<<<<<<<<<<<<<<<<');
      return _firebaseFirestore!;
    }
  }
}
