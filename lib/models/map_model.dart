class MapModel {
  final String uuid;
  final String displayName;
  final String? coordinates;
  final String? displayIcon;
  final String listViewIcon;
  final String splash;
  final String assetPath;
  final String mapUrl;
  final double xMultiplier;
  final double yMultiplier;
  final double xScalarToAdd;
  final double yScalarToAdd;
  final List<Callout>? callouts;

  MapModel({
    required this.uuid,
    required this.displayName,
    this.coordinates,
    this.displayIcon,
    required this.listViewIcon,
    required this.splash,
    required this.assetPath,
    required this.mapUrl,
    required this.xMultiplier,
    required this.yMultiplier,
    required this.xScalarToAdd,
    required this.yScalarToAdd,
    this.callouts,
  });

  factory MapModel.fromJson(Map<String, dynamic> json) => MapModel(
        uuid: json["uuid"],
        displayName: json["displayName"],
        coordinates: json["coordinates"],
        displayIcon: json["displayIcon"],
        listViewIcon: json["listViewIcon"],
        splash: json["splash"],
        assetPath: json["assetPath"],
        mapUrl: json["mapUrl"],
        xMultiplier: json["xMultiplier"]?.toDouble(),
        yMultiplier: json["yMultiplier"]?.toDouble(),
        xScalarToAdd: json["xScalarToAdd"]?.toDouble(),
        yScalarToAdd: json["yScalarToAdd"]?.toDouble(),
        callouts: json["callouts"] == null
            ? []
            : List<Callout>.from(
                json["callouts"]!.map((x) => Callout.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "coordinates": coordinates,
        "displayIcon": displayIcon,
        "listViewIcon": listViewIcon,
        "splash": splash,
        "assetPath": assetPath,
        "mapUrl": mapUrl,
        "xMultiplier": xMultiplier,
        "yMultiplier": yMultiplier,
        "xScalarToAdd": xScalarToAdd,
        "yScalarToAdd": yScalarToAdd,
        "callouts": callouts == null
            ? []
            : List<dynamic>.from(callouts!.map((x) => x.toJson())),
      };
}

class Callout {
  final String regionName;
  final String superRegionName;
  final Location location;

  Callout({
    required this.regionName,
    required this.superRegionName,
    required this.location,
  });

  factory Callout.fromJson(Map<String, dynamic> json) => Callout(
        regionName: json["regionName"],
        superRegionName: json["superRegionName"],
        location: Location.fromJson(json["location"]),
      );

  Map<String, dynamic> toJson() => {
        "regionName": regionName,
        "superRegionName": superRegionName,
        "location": location.toJson(),
      };
}

class Location {
  final double x;
  final double y;

  Location({
    required this.x,
    required this.y,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        x: json["x"]?.toDouble(),
        y: json["y"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "x": x,
        "y": y,
      };
}
