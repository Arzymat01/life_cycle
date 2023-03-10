import 'package:shared_preferences/shared_preferences.dart';

class UserStateServices {
  static const String _nameKey = '_name-key';
  static const String _lastNameKey = '_lastname-Key';
  static const String _passwordkey = '_password-key';
  Future<void> signUp({
    required String name,
    required String lastname,
    required String password,
  }) async {
    final pref = await SharedPreferences.getInstance();

    await pref.setString(_nameKey, name);
    await pref.setString(_lastNameKey, lastname);
    await pref.setString(_passwordkey, password);
  }
}

final service = UserStateServices();
