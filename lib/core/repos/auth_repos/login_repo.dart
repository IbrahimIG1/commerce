import 'package:g_commerce/core/network/auth_networking_services.dart';

class LoginRepo {
  final AuthNetworkeServices _loginNetworkService;
  LoginRepo(this._loginNetworkService);

  Future<void> login({required String email, required String password}) async {
    _loginNetworkService.login(email, password);
  }
}
