import 'package:flutter_base/flutter_base.dart';

class AppContext extends BaseAppContext {
  static final AppContext _instance = AppContext._internal();

  factory AppContext() {
    return _instance;
  }

  AppContext._internal();

  ServicesSetup _services = ServicesSetup();
  DBSetup _db = DBSetup();

  @override
  Future<void> setup() async {
    await _db.setup(locator);
    await _services.setup(locator);
  }
}

class DBSetup extends ContextSetup {
  @override
  Future<void> setup(Locator locator) async {

//    locator.registerSingleton(
//      (locator) => AppDatabase.open(AppConstants.dbName),
//    );
//
//    locator.registerSingleton(
//      (locator) => locator.locate<SomeDao>().someDao,
//    );
//
//    locator.registerSingleton(
//      (locator) => locator.locate<SomeOtherDao>().someOtherDao,
//    );

  }
}

class ServicesSetup extends ContextSetup {
  @override
  Future<void> setup(Locator locator) async {

  }
}
