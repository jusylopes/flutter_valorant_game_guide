class MapModel {
  final String uuid;
  final String displayName;
  final String listViewIcon;

  MapModel({
    required this.uuid,
    required this.displayName,
    required this.listViewIcon,
  });

  factory MapModel.fromJson(Map<String, dynamic> json) => MapModel(
        uuid: json["uuid"],
        displayName: json["displayName"],
        listViewIcon: json["listViewIcon"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "listViewIcon": listViewIcon,
      };
}
