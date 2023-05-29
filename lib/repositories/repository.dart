import 'package:dio/dio.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';

class Repository {
  Repository({required this.dio});

  final Dio dio;
  static const String _baseApi = 'https://valorant-api.com/v1';

  Future<Agent> getAgents() async {
    try {
      Response response = await dio.get('$_baseApi/agents');
      final data = response.data;

      return Agent.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
