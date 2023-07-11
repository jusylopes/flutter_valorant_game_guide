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
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    WeaponDamageRow(
                      label: 'Wall Damage',
                      titleRow: weapon.weaponStats?.wallPenetration.replaceAll(
                              'EWallPenetrationDisplayType::', '') ??
                          '',
                    ),
                    WeaponDamageRow(
                      label: 'Cost',
                      titleRow: weapon.shopData?.cost.toString() ?? '',
                    ),
                    WeaponDamageRow(
                      label: 'Fire Rate',
                      titleRow:
                          '${weapon.weaponStats?.fireRate.toString()}/sec',
                    ),
                    WeaponDamageRow(
                        label: 'Reload Speed',
                        titleRow:
                            '${weapon.weaponStats?.reloadTimeSeconds.toString()}/sec'),
                    WeaponDamageRow(
                      label: 'Magazine Size',
                      titleRow:
                          weapon.weaponStats?.magazineSize.toString() ?? '',
                    ),
                  ],
                ),
              )
            ],
          ),
          const BackButtonApp(),
        ],
      );
    }));
  }
}

class WeaponDamageRow extends StatelessWidget {
  const WeaponDamageRow({
    super.key,
    required this.label,
    required this.titleRow,
  });

  final String label;
  final String titleRow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(label, style: Theme.of(context).textTheme.labelSmall),
          Text(titleRow,
              style: Theme.of(context).textTheme.labelMedium,
              overflow: TextOverflow.visible),
        ],
      ),
    );
  }
}
