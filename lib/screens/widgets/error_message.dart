import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      errorMessage,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
