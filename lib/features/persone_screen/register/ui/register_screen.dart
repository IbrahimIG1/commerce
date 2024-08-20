import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/features/persone_screen/register/cubit/register_cubit.dart';
import 'package:g_commerce/features/persone_screen/register/cubit/register_state.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          RegisterCubit registerCubit = RegisterCubit.get(context);
          return ElevatedButton(
              onPressed: () {
                registerCubit.register();
              },
              child: Text('Register'));
        },
      )),
    );
  }
}
