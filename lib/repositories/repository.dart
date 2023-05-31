import 'package:dio/dio.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/repositories/adapters/agent_adapter.dart';

class Repository {
  Repository({required this.dio, required this.agentAdapter});

  final Dio dio;
  final AgentAdapter agentAdapter;

  static const String _baseApi = 'https://valorant-api.com/v1';

  Future<List<Agent>> getAgents() async {
    try {
      Response response = await dio.get('$_baseApi/agents');
      final data = response.data;

      return agentAdapter.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
