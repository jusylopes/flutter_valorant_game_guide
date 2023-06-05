import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_event.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/models/enum/agent_status.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  group('Bloc Agent', () {
    late AgentBloc agentBloc;
    late MockRepository mockRepository;

    setUp(() {
      mockRepository = MockRepository();
      agentBloc = AgentBloc(repository: mockRepository);
      when(() => mockRepository.getAgents())
          .thenAnswer((_) async => Future.value(agents));
    });

    test('should load agents successfully', () async {
      agentBloc.add(AgentLoaded());

      await Future.delayed(Duration.zero);

      const expectedStatus = AgentStatus.success;
      final expectedAgents = agents;

      expect(agentBloc.state.status, expectedStatus);
      expect(agentBloc.state.agents, expectedAgents);
    });
  });
}

final agents = <Agent>[
  Agent(
      uuid: '1',
      displayName: 'agent1',
      description: 'description',
      developerName: 'developerName',
      displayIcon: 'displayIcon',
      displayIconSmall: 'displayIconSmall',
      killfeedPortrait: 'killfeedPortrait',
      background: 'background',
      backgroundGradientColors: [],
      assetPath: 'assetPath',
      isFullPortraitRightFacing: false,
      isPlayableCharacter: false,
      isAvailableForTest: false,
      isBaseContent: false,
      role: Role(
          uuid: '1',
          displayName: 'displayName',
          description: ' description',
          displayIcon: 'displayIcon',
          assetPath: 'assetPath'),
      abilities: [],
      voiceLine: VoiceLine(minDuration: 1, maxDuration: 1, mediaList: [])),
];
