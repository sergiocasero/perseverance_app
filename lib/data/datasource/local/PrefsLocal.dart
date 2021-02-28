
import 'package:perseverance/data/datasource/local/Local.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsLocal extends Local {
  final SharedPreferences _prefs;

  PrefsLocal(this._prefs);
}
