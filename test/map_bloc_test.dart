import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_valorant_game_guide/blocs/map/map_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/map/map_event.dart';

import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';
import 'package:flutter_valorant_game_guide/models/map_model.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements Repository {}

void main() {
  group('Bloc Map', () {
    late MapBloc mapBloc;
    late MockRepository mockRepository;

    setUp(() {
      mockRepository = MockRepository();
      mapBloc = MapBloc(repository: mockRepository);
      when(() => mockRepository.getData(endpoint: ValorantStrings.endpointMaps))
          .thenAnswer((_) async => Future.value(maps));
    });

    test(
        'the initial state for the MapBloc is MapState (status: MapStatus.initial, Maps: [])',
        () {
      expect(mapBloc.state.status, BlocStatus.initial);
      expect(mapBloc.state.maps, []);
    });

    test(
        'the success state for the MapBloc is MapState (status: MapStatus.success, Maps: Maps)',
        () async {
      mapBloc.add(MapLoaded());

      await Future.delayed(Duration.zero);

      expect(mapBloc.state.status, BlocStatus.success);
      expect(mapBloc.state.maps, maps);
    });

    tearDown(() => mapBloc.close());
  });
}

final maps = <MapModel>[
  MapModel(
      uuid: 'uuid',
      displayName: 'displayName',
      listViewIcon: 'listViewIcon',
      splash: 'splash',
      assetPath: 'assetPath',
      mapUrl: 'mapUrl',
      xMultiplier: 0,
      yMultiplier:0,
      xScalarToAdd: 0,
      yScalarToAdd:0),
];
