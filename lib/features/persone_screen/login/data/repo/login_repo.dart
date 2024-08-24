import 'package:g_commerce/features/persone_screen/login/data/network/login_network_services.dart';

class LoginRepo {
  final LoginNetworkServices _loginNetworkService;
  LoginRepo(this._loginNetworkService);

  Future<void> login({required String email ,required String password}) async {
    
    _loginNetworkService.login(email: email, password: password);
  }
}
