import 'package:equatable/equatable.dart';
import 'package:flutter_valorant_game_guide/models/enum/bloc_status.dart';

class WeaponState extends Equatable {
  const WeaponState({
    required this.status,
    required this.weapons,
    this.errorMessage,
  });

  final BlocStatus status;
  final List weapons;
  final String? errorMessage;

  WeaponState copyWith({
    BlocStatus? status,
    List? weapons,
    String? errorMessage,
  }) {
    return WeaponState(
      status: status ?? this.status,
      weapons: weapons ?? this.weapons,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, weapons, errorMessage];
}
