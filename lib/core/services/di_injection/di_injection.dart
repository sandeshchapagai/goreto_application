import 'package:get_it/get_it.dart';

import '../../../utils/local_storage/secure_storage.dart';

final sl = GetIt.instance;

void initDependencies() {
  //Secure storage
  sl.registerLazySingleton(() => SecureStorage());
}
