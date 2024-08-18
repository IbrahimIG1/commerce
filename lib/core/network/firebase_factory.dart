import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:g_commerce/firebase_options.dart';

class FirebaseFactory {
  FirebaseAuth? _firebaseAuth;
  FirebaseFirestore? _firebaseFirestore;

  //* init Firebase
  static Future<void> initFirebase() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

//* get Firebase Auth
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

  FirebaseFirestore getFirebaseFirestore() {
    if (_firebaseFirestore == null) {
      print('>>>>>>>>>>>>>>>>> firebaseFirestore is null<<<<<<<<<<<<<<<<<<<');

      return _firebaseFirestore = FirebaseFirestore.instance;
    } else {
      print('>>>>>>>>>>>>>>>>> firebaseFirestore have a value <<<<<<<<<<<<<<<<<<<');
      return _firebaseFirestore!;
    }
  }
}
