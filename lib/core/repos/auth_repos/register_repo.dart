import 'package:g_commerce/core/models/register.dart';
import 'package:g_commerce/core/network/auth_networking_services.dart';

class RegisterRepo {
  final AuthNetworkeServices registerNetworkService;
  RegisterRepo(
    this.registerNetworkService,
  );

  Future<void> register({required RegisterModel registerModel}) async {
    registerNetworkService.register(
        registerModel.email, registerModel.password);
  }
}
