import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/weapon/weapon_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/weapon/weapon_state.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_circular_progress_indicator.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/error_message.dart';

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
            return const AgentCircularProgressIndicator();
          case BlocStatus.success:
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: state.weapons.length,
              itemBuilder: (_, index) {
                final WeaponModel weapon = state.weapons[index];

                return Text(weapon.displayName);
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
