import 'package:flutter/material.dart';
import 'package:life_cycle/service/user_state.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isRegistered = await service.isRegistr();
  runApp(
    MyApp(
      route: isRegistered,
    ),
  );
}
