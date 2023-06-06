import 'package:equatable/equatable.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/models/enum/agent_status.dart';

class AgentState  extends Equatable{
  const AgentState({
    required this.status,
    required this.agents,
    this.errorMessage,
  });

  final AgentStatus status;
  final List<Agent> agents;
  final String? errorMessage;

  AgentState copyWith({
    AgentStatus? status,
    List<Agent>? agents,
    String? errorMessage,
  }) {
    return AgentState(
      status: status ?? this.status,
      agents: agents ?? this.agents,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

    @override
  List<Object?> get props => [status, agents, errorMessage];
}
