import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('Repository Agent', () {
    late MockDio dio;
    late Repository repository;
    final response = Response(
      statusCode: 200,
      data: jsonMock,
      requestOptions: RequestOptions(path: '/'),
    );

    setUp(() {
      dio = MockDio();
      repository = Repository(dio: dio);

      when(() => dio.get(any())).thenAnswer((_) async => response);
    });

    group('getAgents', () {
      test('getAgents should return Agent', () async {
        final agents = await repository.getAgents();

        expect(agents, isInstanceOf<List<Agent>>());
        expect(agents.length, equals(1));
        expect(agents[0].displayName, 'Gekko');
        expect(agents[0].developerName, 'Aggrobot');
      });
    });
  });
}

final jsonMock = {
  "status": 200,
  "data": [
    {
      "uuid": "e370fa57-4757-3604-3648-499e1f642d3f",
      "displayName": "Gekko",
      "description":
          "Gekko the Angeleno leads a tight-knit crew of calamitous creatures. His buddies bound forward, scattering enemies out of the way, with Gekko chasing them down to regroup and go again.",
      "developerName": "Aggrobot",
      "characterTags": null,
      "displayIcon":
          "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayicon.png",
      "displayIconSmall":
          "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayiconsmall.png",
      "bustPortrait":
          "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/fullportrait.png",
      "fullPortrait":
          "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/fullportrait.png",
      "fullPortraitV2":
          "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/fullportrait.png",
      "killfeedPortrait":
          "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/killfeedportrait.png",
      "background":
          "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/background.png",
      "backgroundGradientColors": [
        "c7f458ff",
        "d56324ff",
        "3a2656ff",
        "3a7233ff"
      ],
      "assetPath":
          "ShooterGame/Content/Characters/AggroBot/AggroBot_PrimaryAsset",
      "isFullPortraitRightFacing": false,
      "isPlayableCharacter": true,
      "isAvailableForTest": false,
      "isBaseContent": false,
      "role": {
        "uuid": "1b47567f-8f7b-444b-aae3-b0c634622d10",
        "displayName": "Initiator",
        "description":
            "Initiators challenge angles by setting up their team to enter contested ground and push defenders away.",
        "displayIcon":
            "https://media.valorant-api.com/agents/roles/1b47567f-8f7b-444b-aae3-b0c634622d10/displayicon.png",
        "assetPath":
            "ShooterGame/Content/Characters/_Core/Roles/Breaker_PrimaryDataAsset"
      },
      "abilities": [
        {
          "slot": "Ability1",
          "displayName": "Wingman",
          "description":
              "EQUIP Wingman. FIRE to send Wingman forward seeking enemies. Wingman unleashes a concussive blast toward the first enemy he sees. ALT FIRE when targeting a Spike site or planted Spike to have Wingman defuse or plant the Spike. To plant, Gekko must have the Spike in his inventory. When Wingman expires he reverts into a dormant globule. INTERACT to reclaim the globule and gain another Wingman charge after a short cooldown.",
          "displayIcon":
              "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/ability1/displayicon.png"
        },
        {
          "slot": "Ability2",
          "displayName": "Dizzy",
          "description":
              "EQUIP Dizzy. FIRE to send Dizzy soaring forward through the air. Dizzy charges then unleashes plasma blasts at enemies in line of sight. Enemies hit by her plasma are Blinded. When Dizzy expires she reverts into a dormant globule. INTERACT to reclaim the globule and gain another Dizzy charge after a short cooldown.",
          "displayIcon":
              "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/ability2/displayicon.png"
        },
        {
          "slot": "Grenade",
          "displayName": "Mosh Pit",
          "description":
              "EQUIP Mosh. FIRE to throw Mosh like a grenade. ALT FIRE to throw underhand. Upon landing Mosh duplicates across a large area then after a short delay explodes.",
          "displayIcon":
              "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/grenade/displayicon.png"
        },
        {
          "slot": "Ultimate",
          "displayName": "Thrash",
          "description":
              "EQUIP Thrash. FIRE to link with Thrash’s mind and steer her through enemy territory. ACTIVATE to lunge forward and explode, Detaining any players in a small radius. When Thrash expires she reverts into a dormant globule. INTERACT to reclaim the globule and gain another Thrash charge after a short cooldown. Thrash can be reclaimed once.",
          "displayIcon":
              "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/ultimate/displayicon.png"
        }
      ],
      "voiceLine": {
        "minDuration": 2.717865,
        "maxDuration": 2.717865,
        "mediaList": [
          {
            "id": 464327068,
            "wwise": "https://media.valorant-api.com/sounds/464327068.wem",
            "wave": "https://media.valorant-api.com/sounds/464327068.wav"
          }
        ]
      }
    },
  ]
};
