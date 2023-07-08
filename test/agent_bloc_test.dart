import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_event.dart';
import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  group('Bloc Agent', () {
    late AgentBloc agentBloc;
    late MockRepository mockRepository;

    setUp(() {
      mockRepository = MockRepository();
      agentBloc = AgentBloc(repository: mockRepository);
      when(() => mockRepository.getData(endpoint: ValorantStrings.endpointAgent))
          .thenAnswer((_) async => Future.value(agents));
    });

    test(
        'the initial state for the AgentBloc is AgentState (status: AgentStatus.initial, agents: [])',
        () {
      expect(agentBloc.state.status, BlocStatus.initial);
      expect(agentBloc.state.agents, []);
    });

    test(
        'the success state for the AgentBloc is AgentState (status: AgentStatus.success, agents: agents)',
        () async {
      agentBloc.add(AgentLoaded());

      await Future.delayed(Duration.zero);

      expect(agentBloc.state.status, BlocStatus.success);
      expect(agentBloc.state.agents, agents);
    });

    tearDown(() => agentBloc.close());
  });
}

final agents = <AgentModel>[
  AgentModel(
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
