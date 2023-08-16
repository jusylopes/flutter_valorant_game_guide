class AgentModel {
  final String uuid;
  final String displayName;
  final String description;
  final String developerName;
  final String? fullPortrait;
  final String killfeedPortrait;
  final Role? role;
  final List<Ability> abilities;

  AgentModel({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.developerName,
    this.fullPortrait,
    required this.killfeedPortrait,
    this.role,
    required this.abilities,
  });

  factory AgentModel.fromJson(Map<String, dynamic> json) => AgentModel(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        developerName: json["developerName"],
        fullPortrait: json["fullPortrait"],
        killfeedPortrait: json["killfeedPortrait"],
        role: json["role"] == null ? null : Role.fromJson(json["role"]),
        abilities: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "developerName": developerName,
        "fullPortrait": fullPortrait,
        "killfeedPortrait": killfeedPortrait,
        "role": role?.toJson(),
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
      };
}

class Ability {
  final String slot;
  final String displayName;
  final String description;
  final String? displayIcon;

  Ability({
    required this.slot,
    required this.displayName,
    required this.description,
    this.displayIcon,
  });

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json["slot"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
      };
}

class Role {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  final String assetPath;

  Role({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.assetPath,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
        "assetPath": assetPath,
      };
}

class VoiceLine {
  final double minDuration;
  final double maxDuration;
  final List<MediaList> mediaList;

  VoiceLine({
    required this.minDuration,
    required this.maxDuration,
    required this.mediaList,
  });

  factory VoiceLine.fromJson(Map<String, dynamic> json) => VoiceLine(
        minDuration: json["minDuration"]?.toDouble(),
        maxDuration: json["maxDuration"]?.toDouble(),
        mediaList: List<MediaList>.from(
            json["mediaList"].map((x) => MediaList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "minDuration": minDuration,
        "maxDuration": maxDuration,
        "mediaList": List<dynamic>.from(mediaList.map((x) => x.toJson())),
      };
}

class MediaList {
  final int id;
  final String wwise;
  final String wave;

  MediaList({
    required this.id,
    required this.wwise,
    required this.wave,
  });

  factory MediaList.fromJson(Map<String, dynamic> json) => MediaList(
        id: json["id"],
        wwise: json["wwise"],
        wave: json["wave"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "wwise": wwise,
        "wave": wave,
      };
}
