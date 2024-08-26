import 'package:g_commerce/core/helper/shared_prefrence.dart';
import 'package:g_commerce/core/network/firebase_factory.dart';
import 'package:g_commerce/core/network/auth_networking_services.dart';
import 'package:g_commerce/core/repos/auth_repos/login_repo.dart';
import 'package:g_commerce/core/repos/auth_repos/register_repo.dart';
import 'package:g_commerce/features/admin_screens/cubit/admin_cubit.dart';
import 'package:g_commerce/features/admin_screens/data/network/admin_network_services.dart';
import 'package:g_commerce/features/admin_screens/data/repo/admin_repo.dart';
import 'package:g_commerce/features/screens/login/cubit/login_cubit.dart';
import 'package:g_commerce/features/screens/register/cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //* call and initial classes

  //* initial SharedPrefHelper
  SharedPrefHelper.init();
  //* initial Firebase
  final FirebaseFactory firebaseFactory = FirebaseFactoryImpl();
  firebaseFactory.initFirebase();

  //* get Firebase Factory
  getIt.registerLazySingleton<FirebaseFactory>(() => FirebaseFactoryImpl());

  //* Network Services
  getIt.registerLazySingleton<AdminNetworkServices>(
      () => AdminNetworkServices(getIt()));
  getIt.registerFactory<AuthNetworkeServices>(() => AuthNetworkServicesImpl());

  //* Repo
  getIt.registerLazySingleton<AdminRepo>(() => AdminRepo(getIt()));
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  //* Cubits
  getIt.registerFactory<AdminCubit>(() => AdminCubit(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
