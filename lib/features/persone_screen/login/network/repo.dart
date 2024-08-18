import 'package:flutter/material.dart';
import 'package:g_commerce/core/network/networking_services.dart';

class LoginRepo {
  final NetworkeServices _networkeServices;
  LoginRepo(this._networkeServices);

  Future<void> login() async {
    try {
      await _networkeServices.login('ibrahim@gmail.com', '123456');
    } on Exception catch (e) {
      // TODO
      Dialog.fullscreen(
        backgroundColor: Colors.red,
        child:
            Center(child: Text("Error In Login Method => /n${e.toString()}")),
      );
      print(e.toString());
    }
  }
}
