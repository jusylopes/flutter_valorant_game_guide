import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_event.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_state.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';

class AgentBloc extends Bloc<AgentEvent, AgentState> {
  AgentBloc({required this.repository})
      : super(const AgentState(status: BlocStatus.initial, agents: [])) {
    on<AgentLoaded>(_onAgentLoaded);
  }

  final Repository repository;

  void _onAgentLoaded(
    AgentLoaded event,
    Emitter<AgentState> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));

    try {
      final List agents =
          await repository.getData(endpoint: ValorantStrings.endpointAgent);

      emit(state.copyWith(
        status: BlocStatus.success,
        agents: agents,
      ));
    } on Exception {
      emit(state.copyWith(
        status: BlocStatus.error,
        errorMessage: ValorantStrings.errorLoadingMessage,
      ));
    }
  }
}
