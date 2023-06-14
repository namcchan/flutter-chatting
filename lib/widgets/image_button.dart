import 'package:flutter/material.dart';

import '../constants/theme.dart';

class ImageButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String imagePath;

  const ImageButton({
    super.key,
    required this.onPressed,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.0,
      width: 64.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(64.0),
          ),
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.4),
        ),
        child: Image.asset(
          imagePath,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
