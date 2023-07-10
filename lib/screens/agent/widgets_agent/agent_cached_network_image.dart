import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/circular_progress_indicator_app.dart';

class AgentCachedNetworkImage extends StatelessWidget {
  const AgentCachedNetworkImage({
    super.key,
    required this.agent,
    required this.sizeImage,
  });

  final AgentModel agent;
  final double sizeImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      alignment: Alignment.bottomRight,
      imageUrl: agent.fullPortrait ?? ValorantStrings.imagePlaceHolder,
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          const CircularProgressIndicatorApp(),
      imageBuilder: (context, imageProvider) {
        return Align(
          alignment: Alignment.bottomRight,
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
