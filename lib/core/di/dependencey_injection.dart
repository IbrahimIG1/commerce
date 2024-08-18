import 'package:g_commerce/core/network/firebase_factory.dart';
import 'package:g_commerce/features/admin_screens/cubit/admin_cubit.dart';
import 'package:g_commerce/features/admin_screens/data/network/admin_network_services.dart';
import 'package:g_commerce/features/admin_screens/data/repo/admin_repo.dart';
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
  //* Repos
  print('>>>>>>>AdminRepo  setupGetIt  <<<<<');
  getIt.registerLazySingleton<AdminRepo>(() => AdminRepo(getIt()));
  //* Cubits
  print('>>>>>>>AdminCubit  setupGetIt  <<<<<');
  getIt.registerFactory<AdminCubit>(() => AdminCubit(getIt()));
}
