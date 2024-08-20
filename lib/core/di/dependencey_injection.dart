import 'package:g_commerce/core/network/firebase_factory.dart';
import 'package:g_commerce/features/admin_screens/cubit/admin_cubit.dart';
import 'package:g_commerce/features/admin_screens/data/network/admin_network_services.dart';
import 'package:g_commerce/features/admin_screens/data/repo/admin_repo.dart';
import 'package:g_commerce/features/persone_screen/login/cubit/login_cubit.dart';
import 'package:g_commerce/features/persone_screen/login/data/network/login_network_services.dart';
import 'package:g_commerce/features/persone_screen/login/data/repo/login_repo.dart';
import 'package:g_commerce/features/persone_screen/register/cubit/register_cubit.dart';
import 'package:g_commerce/features/persone_screen/register/data/network/register_network_services.dart';
import 'package:g_commerce/features/persone_screen/register/data/repo/register_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //* call and initial classes

  //* initial Firebase
  FirebaseFactory.initFirebase().then((value) {
    print('>>>>>>>initFirebase  setupGetIt <<<<<');
  });

  //* get Firebase Factory
  print('>>>>>>>FirebaseFactory  setupGetIt  <<<<<');
  getIt.registerLazySingleton<FirebaseFactory>(() => FirebaseFactory());

  //* Network Services
  print('>>>>>>>AdminNetworkServices  setupGetIt  <<<<<');
  getIt.registerLazySingleton<AdminNetworkServices>(
      () => AdminNetworkServices(getIt()));
  getIt.registerFactory<RegisterNetworkServices>(()=>RegisterNetworkServices(getIt()));
  getIt.registerLazySingleton<LoginNetworkServices>(
      () => LoginNetworkServices(getIt()));
      //* Repo 
  print('>>>>>>>AdminRepo  setupGetIt  <<<<<');
  getIt.registerLazySingleton<AdminRepo>(() => AdminRepo(getIt()));
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  //* Cubits
  print('>>>>>>>AdminCubit  setupGetIt  <<<<<');
  getIt.registerFactory<AdminCubit>(() => AdminCubit(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
