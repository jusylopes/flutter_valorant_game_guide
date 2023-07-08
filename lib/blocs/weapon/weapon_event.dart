import 'package:equatable/equatable.dart';

abstract class WeaponEvent extends Equatable {
  const WeaponEvent();
}

class WeaponLoaded extends WeaponEvent {
  @override
  List<Object> get props => [];
}
