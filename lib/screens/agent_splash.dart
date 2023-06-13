import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';

class AgentSplash extends StatefulWidget {
  const AgentSplash({super.key});

  @override
  State<AgentSplash> createState() => _AgentSplashState();
}

class _AgentSplashState extends State<AgentSplash>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ValorantColors.primaryColor,
      body: Center(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
