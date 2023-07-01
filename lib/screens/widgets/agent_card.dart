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
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            color: ValorantColors.primaryColorBackground,
              image: const DecorationImage(
                image: AssetImage('images/veg.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: SizedBox(
            height: 250,
            child: agent.bustPortrait != null
                ? Image.network(
                    agent.bustPortrait!,
                    fit: BoxFit.cover,
                  )
                : Image.asset(ValorantStrings.appLogo),
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
