import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/screens/agent_detail_screen.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_cached_network_image.dart';

class AgentCardList extends StatelessWidget {
  const AgentCardList({super.key, required this.agent});

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
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  agent.displayName.toUpperCase(),
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
