import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/theme.dart';
import 'package:flutter_chat_app/widgets/image_button.dart';
import 'package:flutter_chat_app/widgets/input.dart';

import '../../constants/routes.dart';
import '../../widgets/button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.backgroundLight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          iconSize: 24,
          color: AppTheme.primary1,
        ),
      ),
      backgroundColor: const Color(0xffF2F2F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 52),
              Text(
                "Forgot Password",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "Provide email to receive reset link message",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: AppTheme.neutral4),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    const Input(hintText: 'mail@micropage.com'),
                    const SizedBox(height: 20),
                    Button(
                      title: "Send",
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
