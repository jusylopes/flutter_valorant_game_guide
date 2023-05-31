import 'package:flutter_valorant_game_guide/models/agent.dart';

abstract class IAgentAdapter {
  List<Agent> fromJson(dynamic json);
}

class AgentAdapter extends IAgentAdapter {
  @override
  List<Agent> fromJson(dynamic json) {
    return json['data'].map<Agent>((data) => Agent.fromJson(data)).toList();
  }
}
