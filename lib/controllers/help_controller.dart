import 'package:shared_preferences/shared_preferences.dart';

class HelpController {
  Future<void> deleteSession() {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.remove('isLoggedIn');
      prefs.remove('userId');
    });
  }
}
