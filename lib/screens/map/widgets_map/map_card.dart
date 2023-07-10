import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/map_model.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/circular_progress_indicator_app.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key, required this.map});

  final MapModel map;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            height: 80,
            width: double.infinity,
            child: CachedNetworkImage(
              alignment: Alignment.center,
              imageUrl: map.listViewIcon,
              fit: BoxFit.cover,
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.modulate,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  const Center(child: CircularProgressIndicatorApp()),
            ),
          ),
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
