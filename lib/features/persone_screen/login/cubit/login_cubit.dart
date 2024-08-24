import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/features/persone_screen/login/cubit/login_state.dart';
import 'package:g_commerce/features/persone_screen/login/data/repo/login_repo.dart';

import '../../../../core/models/login.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(
    this.loginRepo,
  ) : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> login() async{
    emit(LoginLoadinState());
    LoginModel loginModel = LoginModel(
        email: emailController.text, password: passwordController.text);
    loginRepo
        .login(email: loginModel.email, password: loginModel.password)
        .then((value) {
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginErrorState());
    });
  }
}
