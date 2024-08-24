import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/core/helper/app_regex.dart';
import 'package:g_commerce/core/helper/extensions.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/core/widgets/text_field.dart';
import 'package:g_commerce/features/persone_screen/register/cubit/register_cubit.dart';
import 'package:g_commerce/features/persone_screen/register/ui/widgets/validation_password.dart';
import 'package:g_commerce/generated/l10n.dart';

class RegisterFormField extends StatefulWidget {
  const RegisterFormField({
    super.key,
  });
  @override
  State<RegisterFormField> createState() => _RegisterFormFieldState();
}

class _RegisterFormFieldState extends State<RegisterFormField> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;
  // validation variables
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasPhoneNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  bool isObscure = true;

  @override
  void initState() {
    passwordController = context.read<RegisterCubit>().passwordController;
    setupPasswordControllerListen();
    super.initState();
  }

  void setupPasswordControllerListen() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(
            context.read<RegisterCubit>().passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(
            context.read<RegisterCubit>().passwordController.text);
        hasMinLength = AppRegex.hasMinLength(
            context.read<RegisterCubit>().passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
            context.read<RegisterCubit>().passwordController.text);
        hasNumber = AppRegex.hasNumber(
            context.read<RegisterCubit>().passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<RegisterCubit>().formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextFormFeild(
                hintText: S.of(context).user_name,
                controller: context.read<RegisterCubit>().userNameController,
                validator: (value) {
                  if (value.isNullOrEmpty()) {
                    return S.of(context).please_enter_user_name;
                  }
                }),
            verticalSpace(15),
            AppTextFormFeild(
                hintText: S.of(context).email,
                controller: context.read<RegisterCubit>().emailController,
                validator: (value) {
                  if (value.isNullOrEmpty() || !AppRegex.isEmailValid(value!)) {
                    return S.of(context).please_enter_email;
                  }
                }),
            verticalSpace(15),
            AppTextFormFeild(
                hintText: S.of(context).phone,
                controller: context.read<RegisterCubit>().phoneController,
                validator: (value) {
                  if (value.isNullOrEmpty() ||
                      !AppRegex.isPhoneNumberValid(value!)) {
                    return S.of(context).please_enter_phone;
                  }
                }),
            verticalSpace(15),
            AppTextFormFeild(
              hintText: S.of(context).password,
              controller: passwordController,
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return S.of(context).please_enter_password;
                }
              },
              isObscure: isObscure,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                      isObscure ? Icons.visibility : Icons.visibility_off)),
            ),
            verticalSpace(10),
            PasswordValidation(
                hasLowerCase: hasLowerCase,
                hasUpperCase: hasUpperCase,
                hasSpecialCharacters: hasSpecialCharacter,
                hasNumber: hasNumber,
                hasMinLenght: hasMinLength),
          ],
        ));
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
