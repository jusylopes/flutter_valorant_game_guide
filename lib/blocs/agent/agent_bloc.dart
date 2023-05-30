import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_event.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_state.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/models/enum/agent_status.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';

class AgentBloc extends Bloc<AgentEvent, AgentState> {
  AgentBloc({required this.repository})
      : super(const AgentState(status: AgentStatus.initial, agents: [])) {
    on<AgentLoaded>(_onAgentLoaded);
  }

  final Repository repository;

  void _onAgentLoaded(
    AgentLoaded event,
    Emitter<AgentState> emit,
  ) async {
    emit(state.copyWith(status: AgentStatus.loading));

    try {
      final List<Agent> agents = await repository.getAgents();
      emit(state.copyWith(
        status: AgentStatus.success,
        agents: agents,
      ));
    } on Exception {
      emit(state.copyWith(
        status: AgentStatus.error,
        errorMessage: 'erroooo',
      ));
    }
  }
}
