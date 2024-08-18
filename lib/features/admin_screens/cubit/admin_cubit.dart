import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_commerce/features/admin_screens/cubit/admin_state.dart';
import 'package:g_commerce/features/admin_screens/data/repo/admin_repo.dart';

class AdminCubit extends Cubit<AdminState> {
  final AdminRepo _adminAddDataRepo;
  AdminCubit(this._adminAddDataRepo) : super(AdminInitialState());
  Map categoryDetails = {
    "name": "pen",
    "price": "5.00 EGP",
    "available": true,
  };
  Map<String, dynamic> categoryData = {
    "id": 1,
    "name": "Reda Algammal",
    "school_tools": ["pens", "balls", "books", "note books"],
  };
  static AdminCubit get(context) => BlocProvider.of(context);
  addAdmin() {
    emit(AdminLoadingState());
    _adminAddDataRepo.addAdminData().then((value) {
      print("addA dmin Done in cubit");
      emit(AdminAddDataSuccessState());
    }).catchError((error) {
      print("add Admin Error in cubit >>${error.toString()}");
      emit(AdminAddDataErrorState());
    });
  }


  addItem() {
    emit(AdminLoadingState());
    _adminAddDataRepo.addItemData().then((value) {
      print("addA Item Done in cubit");
      emit(AdminAddDataSuccessState());
    }).catchError((error) {
      print("add Item Error in cubit >>${error.toString()}");
      emit(AdminAddDataErrorState());
    });
  }
}
