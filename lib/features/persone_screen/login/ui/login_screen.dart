import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_commerce/core/helper/extensions.dart';
import 'package:g_commerce/core/helper/spacer_helper.dart';
import 'package:g_commerce/core/routing/routes.dart';
import 'package:g_commerce/features/persone_screen/login/cubit/login_cubit.dart';
import 'package:g_commerce/features/persone_screen/login/cubit/login_state.dart';
import 'package:g_commerce/features/persone_screen/login/ui/widgets/login_form_feild.dart';
import 'package:g_commerce/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginFormFeild(),
                verticalSpace(20),
                BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    LoginCubit loginCubit = LoginCubit.get(context);
                    if (state is LoginLoadinState)
                      Center(
                        child: CircularProgressIndicator(),
                      );
                    return ElevatedButton(
                        onPressed: () {
                          loginCubit.login().then((value) {
                            context.pushReplacementNamed(Routes.homeScreen);
                          });
                        },
                        child: Text(S.of(context).login));
                  },
                ),
              ],
            )),
      ),
    );
  }
}
