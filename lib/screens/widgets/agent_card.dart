import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({super.key, required this.agent});

  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: agent.fullPortrait != null
              ? Image.network(agent.fullPortrait!)
              : Image.asset('assets/images/valorant-logo.png'),
        ),
        Text(agent.developerName),
      ],
    );
  }
}
