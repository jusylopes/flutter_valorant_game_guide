import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';

import '../widgets/agent_circular_progress_indicator.dart';

class WeaponListView extends StatelessWidget {
  const WeaponListView({super.key, required this.weapon});

  final WeaponModel weapon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CachedNetworkImage(
          alignment: Alignment.center,
          imageUrl: weapon.displayIcon,
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
                  scale: 2.5,
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(weapon.displayName.toUpperCase(),
              style: Theme.of(context).textTheme.titleMedium),
        )
      ],
    );
  }
}
