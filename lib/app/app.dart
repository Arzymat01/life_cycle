import 'package:flutter/material.dart';
import 'package:life_cycle/app/app_router.dart';

import '../pages/sign_up.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.route});
  final bool route;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => MyRoutes.onGenerateRoute(settings, route),
    );
  }
}
