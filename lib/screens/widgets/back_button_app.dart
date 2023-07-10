import 'package:flutter/material.dart';

class BackButtonApp extends StatelessWidget {
  const BackButtonApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: IconButton(
        tooltip: 'Go back',
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
