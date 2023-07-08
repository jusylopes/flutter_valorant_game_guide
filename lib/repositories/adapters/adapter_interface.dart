import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/models/map_model.dart';
import 'package:flutter_valorant_game_guide/models/weapon_model.dart';

abstract class IAdapter<T> {
  List<T> fromJson(dynamic json);
}

class AgentAdapter implements IAdapter<AgentModel> {
  @override
  List<AgentModel> fromJson(dynamic json) {
    return json['data']
        .map<AgentModel>((data) => AgentModel.fromJson(data))
        .toList();
  }
}

class MapAdapter implements IAdapter<MapModel> {
  @override
  List<MapModel> fromJson(dynamic json) {
    return json['data']
        .map<MapModel>((data) => MapModel.fromJson(data))
        .toList();
  }
}

class WeaponAdapter implements IAdapter<WeaponModel> {
  @override
  List<WeaponModel> fromJson(dynamic json) {
    return json['data']
        .map<WeaponModel>((data) => WeaponModel.fromJson(data))
        .toList();
  }
}
