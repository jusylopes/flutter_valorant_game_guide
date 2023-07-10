import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/screens/weapon/widgets_weapon/weapon_detail_app_bar.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/back_button_app.dart';

class WeaponDetailScreen extends StatelessWidget {
  const WeaponDetailScreen({super.key, required this.weapon});
  final WeaponModel weapon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      final double maxHeight = constraints.maxHeight;

      return Stack(
        children: [
          Column(
            children: [
              WeaponDetailAppBar(weapon: weapon, maxHeight: maxHeight),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: maxHeight / 4,
                  padding: const EdgeInsets.only(right: 12),
                  child: Image.asset(
                    ValorantStrings.bodyWeaponDamage,
                    fit: BoxFit.contain,
                  ),
                ),
                DataTable(
                  horizontalMargin: 0,
                  columnSpacing: 22,
                  dataTextStyle: Theme.of(context).textTheme.labelSmall,
                  columns: const <DataColumn>[
                    DataColumn(label: Expanded(child: Text('Ranges'))),
                    DataColumn(label: Expanded(child: Text('Head'))),
                    DataColumn(label: Expanded(child: Text('Body'))),
                    DataColumn(label: Expanded(child: Text('Legs'))),
                  ],
                  rows: weapon.weaponStats?.damageRanges
                          .map(
                            (damage) => DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                    '${damage.rangeStartMeters}-${damage.rangeEndMeters}m')),
                                DataCell(
                                    Text(damage.headDamage.toStringAsFixed(2))),
                                DataCell(
                                    Text(damage.bodyDamage.toStringAsFixed(2))),
                                DataCell(
                                    Text(damage.legDamage.toStringAsFixed(2))),
                              ],
                            ),
                          )
                          .toList() ??
                      [],
                ),
              ]),
              const ListTile()
            ],
          ),
          const BackButtonApp(),
        ],
      );
    }));
  }
}
