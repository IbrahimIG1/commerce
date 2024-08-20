import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/features/persone_screen/login/cubit/login_state.dart';
import 'package:g_commerce/features/persone_screen/login/data/repo/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(
    this.loginRepo,
  ) : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  void login() {
    emit(LoginLoadinState());
    loginRepo.login().then((value) {
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginErrorState());
    });
  }
}
