import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/map_model.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';

import '../widgets/agent_circular_progress_indicator.dart';

class MapListView extends StatelessWidget {
  const MapListView({super.key, required this.map});

  final MapModel map;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CachedNetworkImage(
          alignment: Alignment.center,
          imageUrl: map.listViewIcon,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              const Center(child: CircularProgressIndicatorApp()),
          imageBuilder: (context, imageProvider) {
            return Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ValorantColors.primaryColorBackground,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(255, 255, 255, 0.5), BlendMode.modulate),
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(map.displayName.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge),
        )
      ],
    );
  }
}
