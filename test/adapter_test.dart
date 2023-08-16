import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/models/map_model.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';
import 'package:flutter_valorant_game_guide/repositories/adapters/adapter_interface.dart';
import 'mocks/mock_data.dart';

void main() {
  group('Adapters ', () {
    late AgentAdapter agentAdapter;
    late MapAdapter mapAdapter;
    late WeaponAdapter weaponAdapter;

    setUp(() {
      agentAdapter = AgentAdapter();
      mapAdapter = MapAdapter();
      weaponAdapter = WeaponAdapter();
    });

    test('should converting API data to Agent', () async {
      final List<AgentModel> agents =
          agentAdapter.fromJson(MockData.jsonMockAgents);
      final AgentModel agent = agents[0];

      expect(agent.displayName, "Gekko");
      expect(agent.developerName, "Aggrobot");
    });

    test('should converting API data to Map', () async {
      final List<MapModel> maps = mapAdapter.fromJson(MockData.jsonMockMaps);
      final MapModel map = maps[0];

      expect(map.displayName, "Ascent");      
    });

    test('should converting API data to Weapon', () async {
      final List<WeaponModel> weapons =
          weaponAdapter.fromJson(MockData.jsonMockWeapons);
      final WeaponModel weapon = weapons[0];

        expect( weapon.displayName, "Odin");
    });
  });
}
