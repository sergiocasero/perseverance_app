import 'package:perseverance/data/datasource/local/Local.dart';
import 'package:perseverance/data/datasource/local/PrefsLocal.dart';
import 'package:perseverance/data/datasource/remote/NasaRemote.dart';
import 'package:perseverance/data/datasource/remote/Remote.dart';
import 'package:perseverance/data/repository/CommonRepository.dart';
import 'package:perseverance/domain/repository/Repository.dart';
import 'package:perseverance/view/Navigator.dart';
import 'package:perseverance/view/viewmodel/HomeViewModel.dart';
import 'package:perseverance/view/viewmodel/SplashViewModel.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.I;

Future<void> initializeDI() async {
  await _data();
  await _domain();
  await _view();
}

Future<void> _data() async {
  // DATA
  getIt.registerSingleton<Local>(PrefsLocal(await SharedPreferences.getInstance()));
  getIt.registerSingleton<Remote>(NasaRemote());
  getIt.registerSingleton<Repository>(CommonRepository(getIt.get(), getIt.get()));
  getIt.registerSingleton<LinkHandler>(LinkHandler());
}

Future<void> _domain() async {}

Future<void> _view() async {
  getIt.registerSingleton<Navigator>(Navigator());

  getIt.registerFactory(() => SplashViewModel(getIt(), getIt()));
  getIt.registerFactory(() => HomeViewModel(getIt(), getIt()));
}

class LinkHandler {
  static String eventId = "";
}
