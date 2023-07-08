import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/blocs/weapon/weapon_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/weapon/weapon_event.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  group('Bloc Weapon', () {
    late WeaponBloc weaponBloc;
    late MockRepository mockRepository;

    setUp(() {
      mockRepository = MockRepository();
      weaponBloc = WeaponBloc(repository: mockRepository);
      when(() =>
              mockRepository.getData(endpoint: ValorantStrings.endpointWeapon))
          .thenAnswer((_) async => Future.value(weapons));
    });

    test(
        'the initial state for the WeaponBloc is WeaponState (status: WeaponStatus.initial, weapons: [])',
        () {
      expect(weaponBloc.state.status, BlocStatus.initial);
      expect(weaponBloc.state.weapons, []);
    });

    test(
        'the success state for the WeaponBloc is WeaponState (status: WeaponStatus.success, weapons: weapons)',
        () async {
      weaponBloc.add(WeaponLoaded());

      await Future.delayed(Duration.zero);

      expect(weaponBloc.state.status, BlocStatus.success);
      expect(weaponBloc.state.weapons, weapons);
    });

    tearDown(() => weaponBloc.close());
  });
}

final weapons = <WeaponModel>[
  WeaponModel(
      uuid: 'uuid',
      displayName: 'displayName',
      category: 'category',
      defaultSkinUuid: 'defaultSkinUuid',
      displayIcon: 'displayIcon',
      killStreamIcon: 'killStreamIcon',
      assetPath: 'assetPath'),
];
