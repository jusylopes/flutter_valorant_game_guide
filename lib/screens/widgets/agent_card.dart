import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({super.key, required this.agent});

  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          height: 170,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
            color: ValorantColors.secondaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: SizedBox(
            height: 250,
            child: agent.fullPortrait != null
                ? Image.network(
                    agent.fullPortrait!,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/images/valorant-logo.png'),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                agent.role != null ? agent.role!.displayName : "",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: ValorantStrings.rubikFont,
                ),
              ),
              Text(
                agent.displayName.toUpperCase(),
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: ValorantStrings.rubikFont,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
