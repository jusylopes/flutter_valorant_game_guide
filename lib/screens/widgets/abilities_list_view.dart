import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
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
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) => const SizedBox(height: 15.0),
        itemBuilder: (_, index) {
          final Abilities agentAbilities = agent.abilities[index];

          return ExpansionTile(
            collapsedBackgroundColor: ValorantColors.primaryColorBackground,
            backgroundColor: ValorantColors.primaryColorBackground,
            leading: CachedNetworkImage(
              alignment: Alignment.bottomRight,
              imageUrl: agent.fullPortrait ?? ValorantStrings.noImage,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  const AgentCircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageBuilder: (context, imageProvider) {
                return Image.network(
                  height: 35,
                  agentAbilities.displayIcon!,
                  fit: BoxFit.cover,
                );
              },
            ),
            title: Text(
              agentAbilities.displayName.toUpperCase(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            shape: RoundedRectangleBorder(
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