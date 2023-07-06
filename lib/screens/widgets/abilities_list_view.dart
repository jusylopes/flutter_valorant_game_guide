import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_circular_progress_indicator.dart';

class AbilitiesListView extends StatelessWidget {
  const AbilitiesListView({
    super.key,
    required this.agent,
  });

  final AgentModel agent;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        final Ability agentAbilities = agent.abilities[index];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          child: ExpansionTile(
            collapsedBackgroundColor: ValorantColors.primaryColorBackground,
            backgroundColor: ValorantColors.primaryColorBackground,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FittedBox(
                fit: BoxFit.cover,
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
          ),
        );
      },
      childCount: agent.abilities.length,
    ));
  }
}
