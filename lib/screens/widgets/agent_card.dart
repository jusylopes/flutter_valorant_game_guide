import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/screens/agent_detail_screen.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_cached_network_image.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({super.key, required this.agent});

  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AgentDetailScreen(agent: agent),
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: ValorantColors.primaryColorBackground,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Center(
              child: AgentCachedNetworkImage(
                agent: agent,
                sizeImage: 250,
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  agent.role != null ? agent.role!.displayName : "",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: ValorantStrings.rubikFont,
                      color: Colors.grey),
                ),
                Text(
                  agent.displayName.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: ValorantStrings.rubikFont,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
