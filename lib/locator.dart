import 'package:get_it/get_it.dart';
import 'services/services.dart';

GetIt getIt = GetIt.I;

setup() {
  //View Model

  // Services
  getIt.registerLazySingleton<StorageService>(() => StorageService());
  getIt.registerLazySingleton<HiveStorageService>(() => HiveStorageService());
}
