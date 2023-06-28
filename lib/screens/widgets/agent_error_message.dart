import 'package:flutter/material.dart';

class AgentErrorMessage extends StatelessWidget {
  const AgentErrorMessage({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage));
  }
}
