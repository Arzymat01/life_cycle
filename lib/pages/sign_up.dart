import 'package:flutter/material.dart';
import 'package:life_cycle/life_c/home_page_life.dart';
import 'package:life_cycle/pages/home_page.dart';
import 'package:life_cycle/pages/sign_in_page.dart';
import 'package:life_cycle/service/user_state.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final _nameCtl = TextEditingController();
  final _lastNameCtl = TextEditingController();
  final _passwordCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Регистрация"),
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
              controller: _lastNameCtl,
            ),
            TextFormField(
              controller: _passwordCtl,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInPage(),
                    ),
                  );
                },
                child: const Text(
                  'Вход',
                  style: TextStyle(fontSize: 25),
                )),
            ElevatedButton(
              onPressed: () async {
                await service.signUp(
                  name: _nameCtl.text,
                  lastname: _lastNameCtl.text,
                  password: _passwordCtl.text,
                );
                // ignore: use_build_context_synchronously
                await Navigator.pushAndRemoveUntil<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              },
              child: const Text("Sign_Up"),
            ),
          ],
        ),
      ),
    );
  }
}
