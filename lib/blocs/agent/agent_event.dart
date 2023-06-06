import 'package:equatable/equatable.dart';

abstract class AgentEvent extends Equatable {
  const AgentEvent();
}

class AgentLoaded extends AgentEvent {
  @override
  List<Object> get props => [];
}
