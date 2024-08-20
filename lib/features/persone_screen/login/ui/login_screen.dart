import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/features/persone_screen/login/cubit/login_cubit.dart';
import 'package:g_commerce/features/persone_screen/login/cubit/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          LoginCubit loginCubit = LoginCubit.get(context);
          return ElevatedButton(
              onPressed: () {
                loginCubit.login();
              },
              child: Text('Login'));
        },
      )),
    );
  }
}
