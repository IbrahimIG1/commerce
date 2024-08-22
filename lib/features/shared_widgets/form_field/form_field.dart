import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/core/helper/app_regex.dart';
import 'package:g_commerce/core/helper/extensions.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/core/widgets/text_field.dart';
import 'package:g_commerce/features/persone_screen/register/cubit/register_cubit.dart';
import 'package:g_commerce/features/persone_screen/register/ui/widgets/validation_password.dart';

class AppFormField extends StatefulWidget {
  const AppFormField({
    super.key,
  });
  @override
  State<AppFormField> createState() => _AppFormFieldState();
}

class _AppFormFieldState extends State<AppFormField> {
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
      key:context.read<RegisterCubit>().formKey ,
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextFormFeild(
            hintText: 'user name',
            controller: context.read<RegisterCubit>().userNameController,
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'please enter a your name';
              }
            }),
        verticalSpace(15),
        AppTextFormFeild(
            hintText: 'email',
            controller: context.read<RegisterCubit>().emailController,
            validator: (value) {
              if (value.isNullOrEmpty() || !AppRegex.isEmailValid(value!)) {
                return 'please enter a valid email';
              }
            }),
        verticalSpace(15),
        AppTextFormFeild(
            hintText: 'phone',
            controller: context.read<RegisterCubit>().phoneController,
            validator: (value) {
              if (value.isNullOrEmpty() ||
                  !AppRegex.isPhoneNumberValid(value!)) {
                return 'please enter a valid phone';
              }
            }),
        verticalSpace(15),
        AppTextFormFeild(
          hintText: 'password',
          controller: passwordController,
          validator: (value) {
            if (value.isNullOrEmpty()) {
              return 'please enter a valid password';
            }
          },
          isObscure: isObscure,
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(isObscure ? Icons.visibility : Icons.visibility_off)),
        ),
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
