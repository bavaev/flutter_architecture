import 'package:get_it/get_it.dart';

import 'package:test_app/data/database.dart';

class ServiceProvider {
  static final _getIt = GetIt.I;

  static final instance = DataBase();

  void initialize() {
    _getIt.registerLazySingleton(() => DataBase());
  }
}
