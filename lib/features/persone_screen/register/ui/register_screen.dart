import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/features/persone_screen/register/cubit/register_cubit.dart';
import 'package:g_commerce/features/shared_widgets/form_field/form_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppFormField(),
                verticalSpace(20),
                ElevatedButton(
                    onPressed: () {
                      validateThenDoSignUp(context);
                    },
                    child: Text('Register')),
              ],
            )),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().register(context);
    }
  }
}
