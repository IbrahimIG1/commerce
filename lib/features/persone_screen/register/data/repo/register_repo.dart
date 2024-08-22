// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:g_commerce/core/models/register.dart';
import 'package:g_commerce/features/persone_screen/register/data/network/register_network_services.dart';

class RegisterRepo {
  final RegisterNetworkServices registerNetworkService;
  RegisterRepo(
    this.registerNetworkService,
  );

  Future<void> register({required RegisterModel registerModel}) async {
    registerNetworkService.register(
        email: registerModel.email, password: registerModel.password);
  }
}
