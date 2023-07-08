import 'package:equatable/equatable.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();
}

class MapLoaded extends MapEvent {
  @override
  List<Object> get props => [];
}
