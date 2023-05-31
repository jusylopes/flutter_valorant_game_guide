import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/repositories/adapters/agent_adapter.dart';

import 'repository_test.dart';

void main() {
  group('Adapters Agent', () {
    late AgentAdapter agentAdapter;

    setUp(() {
      agentAdapter = AgentAdapter();
    });

    test('should converting API data to Agent', () async {
      final List<Agent> agents = agentAdapter.fromJson(jsonMock);

      final Agent agent = agents[0];

      expect(agent.displayName, 'Gekko');
      expect(agent.developerName, 'Aggrobot');
    });
  });
}
