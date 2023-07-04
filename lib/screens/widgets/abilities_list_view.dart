import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_circular_progress_indicator.dart';

class AbilitiesListView extends StatelessWidget {
  const AbilitiesListView({
    super.key,
    required this.agent,
  });

  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView.separated(
        itemCount: agent.abilities.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(height: 15.0),
        itemBuilder: (_, index) {
          final Abilities agentAbilities = agent.abilities[index];

          return ExpansionTile(
            collapsedBackgroundColor: ValorantColors.primaryColorBackground,
            backgroundColor: ValorantColors.primaryColorBackground,
            leading: FittedBox(
              fit: BoxFit.cover,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: CachedNetworkImage(
                  imageUrl: agentAbilities.displayIcon ?? '',
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      const AgentCircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                
                ),
              ),
            ),
            title: Text(
              agentAbilities.displayName.toUpperCase(),
              style: Theme.of(context).textTheme.bodyLarge,
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  agentAbilities.description,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
