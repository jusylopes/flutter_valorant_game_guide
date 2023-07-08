import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/repositories/adapters/adapter_interface.dart';

import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks/mock_data.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('Repository Agent', () {
    late MockDio dio;
    late Repository repository;
    late AgentAdapter agentAdapter;

    final response = Response(
      statusCode: 200,
      data: MockData.jsonMockAgents,
      requestOptions: RequestOptions(path: '/'),
    );

    setUp(() {
      dio = MockDio();
      agentAdapter = AgentAdapter();

      repository = Repository(dio: dio, adapter: agentAdapter);
      when(() => dio.get(any())).thenAnswer((_) async => response);
    });

    group('getAgents', () {
      test('getAgents should return Agent', () async {
        final agents =
            await repository.getData(endpoint: ValorantStrings.endpointAgent);
        final AgentModel agent = agents[0];

        expect(agent, isInstanceOf<AgentModel>());
        expect(agent.displayName, 'Gekko');
        expect(agent.developerName, 'Aggrobot');
      });
    });
  });
}
