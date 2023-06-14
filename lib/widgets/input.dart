import 'package:flutter/material.dart';

import '../constants/theme.dart';

class Input extends StatelessWidget {
  final Widget? suffixIcon;
  final String? hintText;
  final int? maxLines;
  final bool? obscureText;

  const Input({
    Key? key,
    this.suffixIcon,
    this.hintText,
    this.maxLines = 1,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: 10.0,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: TextFormField(
        maxLines: maxLines,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
