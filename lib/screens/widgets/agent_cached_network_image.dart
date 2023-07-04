import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_circular_progress_indicator.dart';

class AgentCachedNetworkImage extends StatelessWidget {
  const AgentCachedNetworkImage({
    super.key,
    required this.agent,
    required this.sizeImage,
    required this.paddingImage,
  });

  final Agent agent;
  final double sizeImage;
  final EdgeInsets paddingImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      alignment: Alignment.bottomRight,
      imageUrl: agent.fullPortrait ?? '',
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          const AgentCircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageBuilder: (context, imageProvider) {
        return Padding(
          padding: paddingImage,
          child: Container(
            height: sizeImage,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
