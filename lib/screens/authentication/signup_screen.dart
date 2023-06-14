import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/theme.dart';
import 'package:flutter_chat_app/widgets/image_button.dart';
import 'package:flutter_chat_app/widgets/input.dart';

import '../../constants/routes.dart';
import '../../widgets/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _passwordVisible = false;
  bool _checked = false;

  _onChange(bool? value) {
    setState(() {
      _checked = value ?? false;
    });
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return AppTheme.primary1;
    }
    return AppTheme.primary1;
  }

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
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo.png', width: 120, height: 100),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    const Input(hintText: 'mail@micropage.com'),
                    const SizedBox(height: 20),
                    Input(
                      obscureText: true,
                      hintText: '********',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppTheme.neutral1,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      textDirection: TextDirection.ltr,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          child: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: _checked,
                            onChanged: _onChange,
                            checkColor: Colors.white,
                            fillColor: MaterialStateProperty.resolveWith(
                              getColor,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Row(
                            children: [
                              Text("I agree to the ",
                                  style: Theme.of(context).textTheme.bodySmall),
                              InkWell(
                                child: Text(
                                  'Terms & Conditions',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: AppTheme.primary1,
                                          fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                " and ",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              InkWell(
                                child: Text(
                                  'Privacy Policy.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: AppTheme.primary1,
                                          fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Button(
                      title: "Sign Up",
                      onPressed: () => {},
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "or sign up with...",
                        style: TextStyle(color: AppTheme.neutral5),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageButton(
                          onPressed: () => {},
                          imagePath: 'assets/images/google.png',
                        ),
                        const SizedBox(width: 20),
                        ImageButton(
                          onPressed: () => {},
                          imagePath: 'assets/images/apple.png',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.login),
                    child: Text(
                      "Login",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: AppTheme.primary1),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
