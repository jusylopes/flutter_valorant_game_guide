import 'package:equatable/equatable.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';

class AgentState extends Equatable {
  const AgentState({
    required this.status,
    required this.agents,
    this.errorMessage,
  });

  final BlocStatus status;
  final List agents;
  final String? errorMessage;

  AgentState copyWith({
    BlocStatus? status,
    List? agents,
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
