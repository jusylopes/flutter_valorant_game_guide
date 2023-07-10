import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/circular_progress_indicator_app.dart';

class AgentDetailAppBar extends StatelessWidget {
  const AgentDetailAppBar({
    super.key,
    required this.agent,
    required this.maxHeight,
  });

  final AgentModel agent;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: maxHeight * 0.4,
      foregroundDecoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ValorantColors.primaryColor,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          stops: [0, 0.6],
        ),
      ),
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: maxHeight * 0.4,
          color: ValorantColors.primaryColor,
          child: CachedNetworkImage(
            imageUrl: agent.killfeedPortrait,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                const CircularProgressIndicatorApp(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover,
            color: const Color.fromRGBO(255, 255, 255, 0.3),
            colorBlendMode: BlendMode.modulate,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                agent.role?.displayName.toString() ?? '',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                agent.displayName.toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ),

        
      ]),
    );
  }
}
