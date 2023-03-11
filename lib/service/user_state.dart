import 'package:flutter/material.dart';
import 'package:life_cycle/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserStateServices {
  static const String _nameKey = 'name-key';
  static const String _lastNameKey = '_lastname-Key';
  static const String _passwordkey = 'password-key';
  static const String _registrkey = 'registrkey';

  Future<bool> isRegistr() async {
    final pref = await SharedPreferences.getInstance();

    return pref.getBool(_registrkey) ?? false;
  }

  Future<void> signUp({
    required String name,
    required String lastname,
    required String password,
  }) async {
    final pref = await SharedPreferences.getInstance();

    await pref.setString(_nameKey, name);
    await pref.setString(_lastNameKey, lastname);
    await pref.setString(_passwordkey, password);
    await pref.setBool(_registrkey, true);
  }

  Future<bool> sigIn({
    required String name,
    required String password,
  }) async {
    final pref = await SharedPreferences.getInstance();

    final cachedName = pref.getString(_nameKey);
    final cachedPassword = pref.getString(_passwordkey);

    if (name == cachedName && password == cachedPassword) {
      await pref.setBool(_registrkey, true);
      return true;
    } else {
      return false;
    }
  }

  Future<UserModel?> getUser() async {
    final pref = await SharedPreferences.getInstance();

    final cachedName = pref.getString(_nameKey);
    final cachedLastame = pref.getString(_lastNameKey);
    final cachedPassword = pref.getString(_passwordkey);

    if (cachedName != null &&
        cachedLastame != null &&
        cachedPassword != _passwordkey) {
      return UserModel(
        id: "1",
        name: cachedName,
        lastName: cachedLastame,
        password: _passwordkey,
      );
    } else {
      return null;
    }
  }

  Future<void> signOut() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_registrkey);
  }

  Future<void> delete() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_nameKey);
    await pref.remove(_lastNameKey);
    await pref.remove(_passwordkey);
    await pref.remove(_registrkey);
  }
}

final service = UserStateServices();
