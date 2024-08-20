// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:g_commerce/features/persone_screen/register/cubit/register_state.dart';
import 'package:g_commerce/features/persone_screen/register/data/repo/register_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterRepo registerRepo;
  RegisterCubit(
    this.registerRepo,
  ) : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);

  void register() {
    emit(RegisterLoadingState());
    registerRepo.register().then((value) {
      emit(RegisterSuccessState());
    }).catchError((error) {
      emit(RegisterErrorState());
    });
  }
}
