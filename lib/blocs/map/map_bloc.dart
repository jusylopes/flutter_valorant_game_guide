import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/map/map_event.dart';
import 'package:flutter_valorant_game_guide/blocs/map/map_state.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc({required this.repository})
      : super(const MapState(status: BlocStatus.initial, maps: [])) {
    on<MapLoaded>(_onMapLoaded);
  }

  final Repository repository;

  void _onMapLoaded(
    MapLoaded event,
    Emitter<MapState> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));

    try {
      final List maps =
          await repository.getData(endpoint: ValorantStrings.endpointMaps);

      emit(state.copyWith(
        status: BlocStatus.success,
        maps: maps,
      ));
    } on Exception {
      emit(state.copyWith(
        status: BlocStatus.error,
        errorMessage: ValorantStrings.errorLoadingMessage,
      ));
    }
  }
}
