import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/core/helper/app_regex.dart';
import 'package:g_commerce/core/helper/extensions.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/core/widgets/password_obscure.dart';
import 'package:g_commerce/core/widgets/text_field.dart';
import 'package:g_commerce/features/persone_screen/login/cubit/login_cubit.dart';
import 'package:g_commerce/generated/l10n.dart';

class LoginFormFeild extends StatefulWidget {
  const LoginFormFeild({super.key});

  @override
  State<LoginFormFeild> createState() => _LoginFormFeildState();
}

bool isObscure = true;

class _LoginFormFeildState extends State<LoginFormFeild> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextFormFeild(
                hintText: S.of(context).email,
                controller: context.read<LoginCubit>().emailController,
                validator: (value) {
                  if (value!.isNullOrEmpty()) {
                    return S.of(context).please_enter_email;
                  }
                }),
            verticalSpace(15),
            AppTextFormFeild(
                isObscure: isObscure,
                suffixIcon: passwordObscure(
                    isObscure: isObscure,
                    onTap: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    }),
                hintText: S.of(context).password,
                controller: context.read<LoginCubit>().passwordController,
                validator: (value) {
                  if (value.isNullOrEmpty() || !AppRegex.isEmailValid(value!)) {
                    return S.of(context).please_enter_password;
                  }
                }),
          ],
        ));
  }
}
