import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/screens/weapon/weapon_detail_screen.dart';

import '../../widgets/circular_progress_indicator_app.dart';

class WeaponCard extends StatelessWidget {
  const WeaponCard({super.key, required this.weapon});

  final WeaponModel weapon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WeaponDetailScreen(weapon: weapon),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ValorantColors.primaryColorBackground,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Hero(
                tag: weapon.uuid,
                child: CachedNetworkImage(
                  alignment: Alignment.center,
                  imageUrl: weapon.displayIcon,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      const CircularProgressIndicatorApp(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(weapon.displayName.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium),
          )
        ],
      ),
    );
  }
}
