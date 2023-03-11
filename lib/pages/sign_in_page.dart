import 'dart:math';

import 'package:flutter/material.dart';
import 'package:life_cycle/pages/home_page.dart';
import 'package:life_cycle/service/user_state.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final _nameCtl = TextEditingController();
  final _passwordCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: _nameCtl,
            ),
            TextFormField(
              controller: _passwordCtl,
            ),
            ElevatedButton(
              onPressed: () async {
                final isTrue = await service.sigIn(
                  name: _nameCtl.text,
                  password: _passwordCtl.text,
                );

                if (isTrue) {
                  // ignore: use_build_context_synchronously
                  await Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                    (route) => false,
                  );
                } else {
                  print('login or password error');
                }
              },
              child: const Text("Sign_In"),
            ),
          ],
        ),
      ),
    );
  }
}
