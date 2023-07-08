import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/weapon/weapon_event.dart';
import 'package:flutter_valorant_game_guide/blocs/weapon/weapon_state.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';

class WeaponBloc extends Bloc<WeaponEvent, WeaponState> {
  WeaponBloc({required this.repository})
      : super(const WeaponState(status: BlocStatus.initial, weapons: [])) {
    on<WeaponLoaded>(_onWeaponLoaded);
  }

  final Repository repository;

  void _onWeaponLoaded(
    WeaponLoaded event,
    Emitter<WeaponState> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));

    try {
      final List weapons =
          await repository.getData(endpoint: ValorantStrings.endpointWeapon);

      emit(state.copyWith(
        status: BlocStatus.success,
        weapons: weapons,
      ));
    } on Exception {
      emit(state.copyWith(
        status: BlocStatus.error,
        errorMessage: ValorantStrings.errorLoadingMessage,
      ));
    }
  }
}
