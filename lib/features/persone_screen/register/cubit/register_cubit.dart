import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/core/helper/extensions.dart';
import 'package:g_commerce/core/models/register.dart';
import 'package:g_commerce/core/routing/routes.dart';

import 'package:g_commerce/features/persone_screen/register/cubit/register_state.dart';
import 'package:g_commerce/features/persone_screen/register/data/repo/register_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterRepo registerRepo;
  RegisterCubit(
    this.registerRepo,
  ) : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool isShowPassword = false;
  final formKey = GlobalKey<FormState>();

  //* register
  void register(BuildContext context) {
    emit(RegisterLoadingState());
    registerRepo
        .register(
            registerModel: RegisterModel(
      userName: userNameController.text,
      password: passwordController.text,
      email: emailController.text,
      phone: phoneController.text,
    ))
        .then((value) {
      emit(RegisterSuccessState());
      context.pushReplacementNamed(Routes.loginScreen);
    }).catchError((error) {
      emit(RegisterErrorState());
    });
  }


}
