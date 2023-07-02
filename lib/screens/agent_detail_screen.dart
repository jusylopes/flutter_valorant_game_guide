import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_cached_network_image.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_circular_progress_indicator.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_detail_app_bar.dart';

class AgentDetailScreen extends StatelessWidget {
  const AgentDetailScreen({super.key, required this.agent});
  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      final double maxHeight = constraints.maxHeight;

      return SingleChildScrollView(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AgentDetailAppBar(
                agent: agent,
                maxHeight: maxHeight,
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "// BIOGRAPHY",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Text(
                  agent.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "// SPECIAL ABILITIES",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              ListView.separated(
                itemCount: agent.abilities.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (_, __) => const SizedBox(height: 15.0),
                itemBuilder: (_, index) {
                  final Abilities agentAbilities = agent.abilities[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: ListTile(
                        tileColor: ValorantColors.primaryColorBackground,
                        leading: CachedNetworkImage(
                          alignment: Alignment.bottomRight,
                          imageUrl:
                              agent.fullPortrait ?? ValorantStrings.noImage,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  const AgentCircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
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
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        subtitle: Text(
                          agentAbilities.description,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  );
                },
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: AgentCachedNetworkImage(
              agent: agent,
              sizeImage: maxHeight / 2.1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ]),
      );
    }));
  }
}
