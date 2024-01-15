import 'package:flutter/material.dart';

class ErrorTextForTF extends StatelessWidget {
  final String text;
  const ErrorTextForTF({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 16,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.red,
        ),
      ),
    );
  }
}
