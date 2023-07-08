import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/map/map_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/map/map_state.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/models/map_model.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_circular_progress_indicator.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/error_message.dart';



class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with AutomaticKeepAliveClientMixin<MapScreen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: BlocBuilder<MapBloc, MapState>(builder: (context, state) {
        switch (state.status) {
          case BlocStatus.initial:
          case BlocStatus.loading:
            return const AgentCircularProgressIndicator();
          case BlocStatus.success:
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: state.maps.length,
              itemBuilder: (_, index) {
                final MapModel weapon = state.maps[index];

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