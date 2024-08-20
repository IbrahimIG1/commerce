import 'package:g_commerce/core/models/login.dart';
import 'package:g_commerce/features/persone_screen/login/data/network/login_network_services.dart';

class LoginRepo {
  final LoginNetworkServices _loginNetworkService;
  LoginRepo(this._loginNetworkService);

  Future<void> login() async {
    LoginModel loginModel =
        LoginModel(userName: 'ibrahim@gmail.com', password: '123456');
    _loginNetworkService.login(email: loginModel.userName, password: loginModel.password);
  }
}
