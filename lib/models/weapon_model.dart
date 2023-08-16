class WeaponModel {
  final String uuid;
  final String displayName;
  final String category;
  final String displayIcon;
  final WeaponStats? weaponStats;
  final ShopData? shopData;

  WeaponModel({
    required this.uuid,
    required this.displayName,
    required this.category,
    required this.displayIcon,
    this.weaponStats,
    this.shopData,
  });

  factory WeaponModel.fromJson(Map<String, dynamic> json) => WeaponModel(
        uuid: json["uuid"],
        displayName: json["displayName"],
        category: json["category"],
        displayIcon: json["displayIcon"],
        weaponStats: json["weaponStats"] == null
            ? null
            : WeaponStats.fromJson(json["weaponStats"]),
        shopData: json["shopData"] == null
            ? null
            : ShopData.fromJson(json["shopData"]),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "category": category,
        "displayIcon": displayIcon,
        "weaponStats": weaponStats?.toJson(),
        "shopData": shopData?.toJson(),
      };
}

class ShopData {
  final int cost;
  final String category;
  final String categoryText;
  final GridPosition? gridPosition;
  final bool canBeTrashed;
  final dynamic image;
  final String newImage;
  final dynamic newImage2;
  final String assetPath;

  ShopData({
    required this.cost,
    required this.category,
    required this.categoryText,
    this.gridPosition,
    required this.canBeTrashed,
    required this.image,
    required this.newImage,
    required this.newImage2,
    required this.assetPath,
  });

  factory ShopData.fromJson(Map<String, dynamic> json) => ShopData(
        cost: json["cost"],
        category: json["category"],
        categoryText: json["categoryText"],
        gridPosition: json["gridPosition"] == null
            ? null
            : GridPosition.fromJson(json["gridPosition"]),
        canBeTrashed: json["canBeTrashed"],
        image: json["image"],
        newImage: json["newImage"],
        newImage2: json["newImage2"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "cost": cost,
        "category": category,
        "categoryText": categoryText,
        "gridPosition": gridPosition?.toJson(),
        "canBeTrashed": canBeTrashed,
        "image": image,
        "newImage": newImage,
        "newImage2": newImage2,
        "assetPath": assetPath,
      };
}

class GridPosition {
  final int row;
  final int column;

  GridPosition({
    required this.row,
    required this.column,
  });

  factory GridPosition.fromJson(Map<String, dynamic> json) => GridPosition(
        row: json["row"],
        column: json["column"],
      );

  Map<String, dynamic> toJson() => {
        "row": row,
        "column": column,
      };
}

class WeaponStats {
  final double fireRate;
  final int magazineSize;
  final double runSpeedMultiplier;
  final double equipTimeSeconds;
  final double reloadTimeSeconds;
  final double firstBulletAccuracy;
  final int shotgunPelletCount;
  final String wallPenetration;
  final String? feature;
  final String? fireMode;
  final String? altFireType;
  final AdsStats? adsStats;
  final AltShotgunStats? altShotgunStats;
  final AirBurstStats? airBurstStats;
  final List<DamageRange> damageRanges;

  WeaponStats({
    required this.fireRate,
    required this.magazineSize,
    required this.runSpeedMultiplier,
    required this.equipTimeSeconds,
    required this.reloadTimeSeconds,
    required this.firstBulletAccuracy,
    required this.shotgunPelletCount,
    required this.wallPenetration,
    this.feature,
    this.fireMode,
    this.altFireType,
    this.adsStats,
    this.altShotgunStats,
    this.airBurstStats,
    required this.damageRanges,
  });

  factory WeaponStats.fromJson(Map<String, dynamic> json) => WeaponStats(
        fireRate: json["fireRate"]?.toDouble(),
        magazineSize: json["magazineSize"],
        runSpeedMultiplier: json["runSpeedMultiplier"]?.toDouble(),
        equipTimeSeconds: json["equipTimeSeconds"]?.toDouble(),
        reloadTimeSeconds: json["reloadTimeSeconds"]?.toDouble(),
        firstBulletAccuracy: json["firstBulletAccuracy"]?.toDouble(),
        shotgunPelletCount: json["shotgunPelletCount"],
        wallPenetration: json["wallPenetration"],
        feature: json["feature"],
        fireMode: json["fireMode"],
        altFireType: json["altFireType"],
        adsStats: json[" adsStats"] == null
            ? null
            : AdsStats.fromJson(json["adsStats"]),
        altShotgunStats: json["altShotgunStats"] == null
            ? null
            : AltShotgunStats.fromJson(json["altShotgunStats"]),
        airBurstStats: json["airBurstStat"] == null
            ? null
            : AirBurstStats.fromJson(json["airBurstStat"]),
        damageRanges: List<DamageRange>.from(
            json["damageRanges"].map((x) => DamageRange.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "fireRate": fireRate,
        "magazineSize": magazineSize,
        "runSpeedMultiplier": runSpeedMultiplier,
        "equipTimeSeconds": equipTimeSeconds,
        "reloadTimeSeconds": reloadTimeSeconds,
        "firstBulletAccuracy": firstBulletAccuracy,
        "shotgunPelletCount": shotgunPelletCount,
        "wallPenetration": wallPenetration,
        "feature": feature,
        "fireMode": fireMode,
        "altFireType": altFireType,
        "adsStats": adsStats?.toJson(),
        "altShotgunStats": altShotgunStats?.toJson(),
        "airBurstStats": airBurstStats?.toJson(),
        "damageRanges": List<dynamic>.from(damageRanges.map((x) => x.toJson())),
      };
}

class AdsStats {
  final double zoomMultiplier;
  final double fireRate;
  final double runSpeedMultiplier;
  final int burstCount;
  final double firstBulletAccuracy;

  AdsStats({
    required this.zoomMultiplier,
    required this.fireRate,
    required this.runSpeedMultiplier,
    required this.burstCount,
    required this.firstBulletAccuracy,
  });

  factory AdsStats.fromJson(Map<String, dynamic> json) => AdsStats(
        zoomMultiplier: json["zoomMultiplier"]?.toDouble(),
        fireRate: json["fireRate"]?.toDouble(),
        runSpeedMultiplier: json["runSpeedMultiplier"]?.toDouble(),
        burstCount: json["burstCount"],
        firstBulletAccuracy: json["firstBulletAccuracy"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "zoomMultiplier": zoomMultiplier,
        "fireRate": fireRate,
        "runSpeedMultiplier": runSpeedMultiplier,
        "burstCount": burstCount,
        "firstBulletAccuracy": firstBulletAccuracy,
      };
}

class AirBurstStats {
  final int shotgunPelletCount;
  final double burstDistance;

  AirBurstStats({
    required this.shotgunPelletCount,
    required this.burstDistance,
  });

  factory AirBurstStats.fromJson(Map<String, dynamic> json) => AirBurstStats(
        shotgunPelletCount: json["shotgunPelletCount"],
        burstDistance: json["burstDistance"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "shotgunPelletCount": shotgunPelletCount,
        "burstDistance": burstDistance,
      };
}

class AltShotgunStats {
  final int shotgunPelletCount;
  final double burstRate;

  AltShotgunStats({
    required this.shotgunPelletCount,
    required this.burstRate,
  });

  factory AltShotgunStats.fromJson(Map<String, dynamic> json) =>
      AltShotgunStats(
        shotgunPelletCount: json["shotgunPelletCount"],
        burstRate: json["burstRate"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "shotgunPelletCount": shotgunPelletCount,
        "burstRate": burstRate,
      };
}

class DamageRange {
  final int rangeStartMeters;
  final int rangeEndMeters;
  final double headDamage;
  final int bodyDamage;
  final double legDamage;

  DamageRange({
    required this.rangeStartMeters,
    required this.rangeEndMeters,
    required this.headDamage,
    required this.bodyDamage,
    required this.legDamage,
  });

  factory DamageRange.fromJson(Map<String, dynamic> json) => DamageRange(
        rangeStartMeters: json["rangeStartMeters"],
        rangeEndMeters: json["rangeEndMeters"],
        headDamage: json["headDamage"]?.toDouble(),
        bodyDamage: json["bodyDamage"],
        legDamage: json["legDamage"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "rangeStartMeters": rangeStartMeters,
        "rangeEndMeters": rangeEndMeters,
        "headDamage": headDamage,
        "bodyDamage": bodyDamage,
        "legDamage": legDamage,
      };
}
