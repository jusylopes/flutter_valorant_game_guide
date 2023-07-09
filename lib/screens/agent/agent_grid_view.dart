import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/screens/agent/agent_detail_screen.dart';
import 'package:flutter_valorant_game_guide/screens/agent/agent_cached_network_image.dart';

class AgentGridView extends StatelessWidget {
  const AgentGridView({super.key, required this.agent});

  final AgentModel agent;

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
                borderRadius: BorderRadius.circular(20),
                color: ValorantColors.primaryColorBackground),
          ),
          Hero(
            tag: agent.uuid,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: AgentCachedNetworkImage(
                agent: agent,
                sizeImage: 250,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  agent.role?.displayName.toString() ?? '',
                  style: Theme.of(context).textTheme.labelSmall,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
                Text(
                  agent.displayName.toUpperCase(),
                  style: Theme.of(context).textTheme.labelMedium,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
