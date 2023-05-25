class Agent {
  Agent({required this.status, required this.data});

  final int status;
  final List<AgentData> data;

  factory Agent.fromJson(Map<String, dynamic> json) => Agent(
      status: json['status'],
      data: List.from(json['data']).map((e) => AgentData.fromJson(e)).toList());
}

class AgentData {
  AgentData(
      {required this.uuid,
      required this.displayName,
      required this.description,
      required this.developerName,
      this.characterTags,
      required this.displayIcon,
      required this.displayIconSmall,
      required this.bustPortrait,
      required this.fullPortrait,
      required this.fullPortraitV2,
      required this.killfeedPortrait,
      required this.background,
      required this.backgroundGradientColors,
      required this.assetPath,
      required this.isFullPortraitRightFacing,
      required this.isPlayableCharacter,
      required this.isAvailableForTest,
      required this.isBaseContent,
      required this.role,
      required this.abilities,
      required this.voiceLine});

  final String uuid;
  final String displayName;
  final String description;
  final String developerName;
  final List<String>? characterTags;
  final String displayIcon;
  final String displayIconSmall;
  final String bustPortrait;
  final String fullPortrait;
  final String fullPortraitV2;
  final String killfeedPortrait;
  final String background;
  final List<String> backgroundGradientColors;
  final String assetPath;
  final bool isFullPortraitRightFacing;
  final bool isPlayableCharacter;
  final bool isAvailableForTest;
  final bool isBaseContent;
  final Role role;
  final List<Abilities> abilities;
  final VoiceLine voiceLine;

  factory AgentData.fromJson(Map<String, dynamic> json) => AgentData(
      uuid: json['uuid'],
      displayName: json['displayName'],
      description: json['description'],
      developerName: json['developerName'],
      characterTags: json['characterTags'].cast<String>(),
      displayIcon: json['displayIcon'],
      displayIconSmall: json['displayIconSmall'],
      bustPortrait: json['bustPortrait'],
      fullPortrait: json['fullPortrait'],
      fullPortraitV2: json['fullPortraitV2'],
      killfeedPortrait: json['killfeedPortrait'],
      background: json['background'],
      backgroundGradientColors: json['backgroundGradientColors'].cast<String>(),
      assetPath: json['assetPath'],
      isFullPortraitRightFacing: json['isFullPortraitRightFacing'],
      isPlayableCharacter: json['isPlayableCharacter'],
      isAvailableForTest: json['isAvailableForTest'],
      isBaseContent: json['isBaseContent'],
      role: Role.fromJson(json['role']),
      abilities: List<Abilities>.from(json['abilities'].map((x) => x)),
      voiceLine: VoiceLine.fromJson(json['voiceLine']));
}

class Role {
  Role(
      {required this.uuid,
      required this.displayName,
      required this.description,
      required this.displayIcon,
      required this.assetPath});

  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  final String assetPath;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
      uuid: json['uuid'],
      displayName: json['displayName'],
      description: json['description'],
      displayIcon: json['displayIcon'],
      assetPath: json['assetPath']);
}

class Abilities {
  Abilities(
      {required this.slot,
      required this.displayName,
      required this.description,
      required this.displayIcon});

  final String slot;
  final String displayName;
  final String description;
  final String displayIcon;

  factory Abilities.fromJson(Map<String, dynamic> json) => Abilities(
      slot: json['slot'],
      displayName: json['displayName'],
      description: json['description'],
      displayIcon: json['displayIcon']);
}

class VoiceLine {
  VoiceLine(
      {required this.minDuration,
      required this.maxDuration,
      required this.mediaList});

  final double minDuration;
  final double maxDuration;
  final List<MediaList> mediaList;

  factory VoiceLine.fromJson(Map<String, dynamic> json) => VoiceLine(
      minDuration: json['minDuration'],
      maxDuration: json['maxDuration'],
      mediaList: List.from(json['mediaList'])
          .map((e) => MediaList.fromJson(e))
          .toList());
}

class MediaList {
  MediaList({required this.id, required this.wwise, required this.wave});

  final int id;
  final String wwise;
  final String wave;

  factory MediaList.fromJson(Map<String, dynamic> json) =>
      MediaList(id: json['id'], wwise: json['wwise'], wave: json['wave']);
}
