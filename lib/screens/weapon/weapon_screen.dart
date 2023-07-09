import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/weapon/weapon_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/weapon/weapon_state.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_circular_progress_indicator.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/error_message.dart';
import 'package:flutter_valorant_game_guide/screens/weapon/weapon_list_view.dart';

class WeaponScreen extends StatefulWidget {
  const WeaponScreen({super.key});

  @override
  State<WeaponScreen> createState() => _WeaponScreenState();
}

class _WeaponScreenState extends State<WeaponScreen>
    with AutomaticKeepAliveClientMixin<WeaponScreen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: BlocBuilder<WeaponBloc, WeaponState>(builder: (context, state) {
        switch (state.status) {
          case BlocStatus.initial:
          case BlocStatus.loading:
            return const CircularProgressIndicatorApp();
          case BlocStatus.success:
            return ListView.separated(
              padding: const EdgeInsets.all(20),
              separatorBuilder: (context, index) => const SizedBox(
                height: 12,
              ),
              itemCount: state.weapons.length,
              itemBuilder: (_, index) {
                final WeaponModel weapon = state.weapons[index];

                return WeaponListView(weapon: weapon);
              },
            );
          case BlocStatus.error:
            return ErrorMessage(
              errorMessage: state.errorMessage!,
            );
        }
      }),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
