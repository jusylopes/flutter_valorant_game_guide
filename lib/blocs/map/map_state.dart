import 'package:equatable/equatable.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';

class MapState extends Equatable {
  const MapState({
    required this.status,
    required this.maps,
    this.errorMessage,
  });

  final BlocStatus status;
  final List maps;
  final String? errorMessage;

  MapState copyWith({
    BlocStatus? status,
    List? maps,
    String? errorMessage,
  }) {
    return MapState(
      status: status ?? this.status,
      maps: maps ?? this.maps,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, maps, errorMessage];
}
