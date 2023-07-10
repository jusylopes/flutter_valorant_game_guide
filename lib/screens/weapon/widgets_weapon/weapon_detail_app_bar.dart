import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';

class WeaponDetailAppBar extends StatelessWidget {
  const WeaponDetailAppBar({
    super.key,
    required this.weapon,
    required this.maxHeight,
  });

  final WeaponModel weapon;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: double.infinity,
          height: maxHeight * 0.3,
          color: ValorantColors.primaryColorBackground,
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ValorantColors.primaryColor,
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              stops: [0, 0.9],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Hero(
              tag: weapon.uuid,
              child: CachedNetworkImage(
                imageUrl: weapon.displayIcon,
                fit: BoxFit.contain,
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                weapon.category.replaceAll(('EEquippableCategory::'), ''),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                weapon.displayName.toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
