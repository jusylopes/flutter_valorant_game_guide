import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_event.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements Repository {
  // @override
  // Future<List<Agent>> getAgents() =>
  //     Future.delayed(const Duration(seconds: 2), () => [...agents]);
}

void main() {
  group('Bloc Agent', () {
    late AgentBloc agentBloc;
    late MockRepository mockRepository;

    setUp(() {
      mockRepository = MockRepository();
      agentBloc = AgentBloc(repository: mockRepository);
      when(() => mockRepository.getAgents())
          .thenAnswer((_) => Future.value(agents));
    });

    test('should return a list of agents', () async {
      agentBloc.add(AgentLoaded());
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
