import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/theme.dart';
import 'package:flutter_chat_app/widgets/input.dart';

import '../../widgets/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', width: 120, height: 100),
              const SizedBox(height: 40),
              const Input(hintText: 'mail@micropage.com'),
              const SizedBox(height: 20),
              Input(
                obscureText: true,
                hintText: '********',
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppTheme.neutral1,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Button(
                title: "Login",
                onPressed: () => print("okela"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
