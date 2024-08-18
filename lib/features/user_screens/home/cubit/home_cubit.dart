import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/features/user_screens/home/cubit/home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(HomeCubitInitState());
  static HomeCubit get(context) => BlocProvider.of(context);
 
}
