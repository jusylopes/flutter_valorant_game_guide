class MockData {
  static const jsonMockAgents = {
    "status": 200,
    "data": [
      {
        "uuid": "e370fa57-4757-3604-3648-499e1f642d3f",
        "displayName": "Gekko",
        "description":
            "Gekko the Angeleno leads a tight-knit crew of calamitous creatures. His buddies bound forward, scattering enemies out of the way, with Gekko chasing them down to regroup and go again.",
        "developerName": "Aggrobot",
        "characterTags": null,
        "displayIcon":
            "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayicon.png",
        "displayIconSmall":
            "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/displayiconsmall.png",
        "bustPortrait":
            "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/fullportrait.png",
        "fullPortrait":
            "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/fullportrait.png",
        "fullPortraitV2":
            "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/fullportrait.png",
        "killfeedPortrait":
            "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/killfeedportrait.png",
        "background":
            "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/background.png",
        "backgroundGradientColors": [
          "c7f458ff",
          "d56324ff",
          "3a2656ff",
          "3a7233ff"
        ],
        "assetPath":
            "ShooterGame/Content/Characters/AggroBot/AggroBot_PrimaryAsset",
        "isFullPortraitRightFacing": false,
        "isPlayableCharacter": true,
        "isAvailableForTest": false,
        "isBaseContent": false,
        "role": {
          "uuid": "1b47567f-8f7b-444b-aae3-b0c634622d10",
          "displayName": "Initiator",
          "description":
              "Initiators challenge angles by setting up their team to enter contested ground and push defenders away.",
          "displayIcon":
              "https://media.valorant-api.com/agents/roles/1b47567f-8f7b-444b-aae3-b0c634622d10/displayicon.png",
          "assetPath":
              "ShooterGame/Content/Characters/_Core/Roles/Breaker_PrimaryDataAsset"
        },
        "abilities": [
          {
            "slot": "Ability1",
            "displayName": "Wingman",
            "description":
                "EQUIP Wingman. FIRE to send Wingman forward seeking enemies. Wingman unleashes a concussive blast toward the first enemy he sees. ALT FIRE when targeting a Spike site or planted Spike to have Wingman defuse or plant the Spike. To plant, Gekko must have the Spike in his inventory. When Wingman expires he reverts into a dormant globule. INTERACT to reclaim the globule and gain another Wingman charge after a short cooldown.",
            "displayIcon":
                "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/ability1/displayicon.png"
          },
          {
            "slot": "Ability2",
            "displayName": "Dizzy",
            "description":
                "EQUIP Dizzy. FIRE to send Dizzy soaring forward through the air. Dizzy charges then unleashes plasma blasts at enemies in line of sight. Enemies hit by her plasma are Blinded. When Dizzy expires she reverts into a dormant globule. INTERACT to reclaim the globule and gain another Dizzy charge after a short cooldown.",
            "displayIcon":
                "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/ability2/displayicon.png"
          },
          {
            "slot": "Grenade",
            "displayName": "Mosh Pit",
            "description":
                "EQUIP Mosh. FIRE to throw Mosh like a grenade. ALT FIRE to throw underhand. Upon landing Mosh duplicates across a large area then after a short delay explodes.",
            "displayIcon":
                "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/grenade/displayicon.png"
          },
          {
            "slot": "Ultimate",
            "displayName": "Thrash",
            "description":
                "EQUIP Thrash. FIRE to link with Thrash’s mind and steer her through enemy territory. ACTIVATE to lunge forward and explode, Detaining any players in a small radius. When Thrash expires she reverts into a dormant globule. INTERACT to reclaim the globule and gain another Thrash charge after a short cooldown. Thrash can be reclaimed once.",
            "displayIcon":
                "https://media.valorant-api.com/agents/e370fa57-4757-3604-3648-499e1f642d3f/abilities/ultimate/displayicon.png"
          }
        ],
        "voiceLine": {
          "minDuration": 2.717865,
          "maxDuration": 2.717865,
          "mediaList": [
            {
              "id": 464327068,
              "wwise": "https://media.valorant-api.com/sounds/464327068.wem",
              "wave": "https://media.valorant-api.com/sounds/464327068.wav"
            }
          ]
        }
      },
    ]
  };

  static const jsonMockWeapons = {
    "status": 200,
    "data": [
      {
        "uuid": "63e6c2b6-4a8e-869c-3d4c-e38355226584",
        "displayName": "Odin",
        "category": "EEquippableCategory::Heavy",
        "defaultSkinUuid": "f454efd1-49cb-372f-7096-d394df615308",
        "displayIcon":
            "https://media.valorant-api.com/weapons/63e6c2b6-4a8e-869c-3d4c-e38355226584/displayicon.png",
        "killStreamIcon":
            "https://media.valorant-api.com/weapons/63e6c2b6-4a8e-869c-3d4c-e38355226584/killstreamicon.png",
        "assetPath":
            "ShooterGame/Content/Equippables/Guns/HvyMachineGuns/HMG/HMGPrimaryAsset",
        "weaponStats": {
          "fireRate": 12,
          "magazineSize": 100,
          "runSpeedMultiplier": 0.76,
          "equipTimeSeconds": 1.25,
          "reloadTimeSeconds": 5,
          "firstBulletAccuracy": 0.8,
          "shotgunPelletCount": 1,
          "wallPenetration": "EWallPenetrationDisplayType::High",
          "feature": "EWeaponStatsFeature::ROFIncrease",
          "fireMode": null,
          "altFireType": "EWeaponAltFireDisplayType::ADS",
          "adsStats": {
            "zoomMultiplier": 1.15,
            "fireRate": 15.6,
            "runSpeedMultiplier": 0.76,
            "burstCount": 1,
            "firstBulletAccuracy": 0.79
          },
          "altShotgunStats": null,
          "airBurstStats": null,
          "damageRanges": [
            {
              "rangeStartMeters": 0,
              "rangeEndMeters": 30,
              "headDamage": 95,
              "bodyDamage": 38,
              "legDamage": 32.3
            },
            {
              "rangeStartMeters": 30,
              "rangeEndMeters": 50,
              "headDamage": 77.5,
              "bodyDamage": 31,
              "legDamage": 26.35
            }
          ]
        },
        "shopData": {
          "cost": 3200,
          "category": "Heavy Weapons",
          "categoryText": "Heavy Weapons",
          "gridPosition": {"row": 2, "column": 2},
          "canBeTrashed": true,
          "image": null,
          "newImage":
              "https://media.valorant-api.com/weapons/63e6c2b6-4a8e-869c-3d4c-e38355226584/shop/newimage.png",
          "newImage2": null,
          "assetPath":
              "ShooterGame/Content/Equippables/Guns/HvyMachineGuns/HMG/HeavyMachineGunPurchase"
        },
        "skins": [
          {
            "uuid": "89be9866-4807-6235-2a95-499cd23828df",
            "displayName": "Altitude Odin",
            "themeUuid": "537e0587-416c-f8f3-965c-bba3508156d7",
            "contentTierUuid": "0cebb8be-46d7-c12a-d306-e9907bfc5a25",
            "displayIcon":
                "https://media.valorant-api.com/weaponskins/89be9866-4807-6235-2a95-499cd23828df/displayicon.png",
            "wallpaper": null,
            "assetPath":
                "ShooterGame/Content/Equippables/Guns/HvyMachineGuns/HMG/Airplane/HMG_Airplane_PrimaryAsset",
            "chromas": [
              {
                "uuid": "092a25a4-422f-f577-37ac-26a5d489c155",
                "displayName": "Altitude Odin",
                "displayIcon": null,
                "fullRender":
                    "https://media.valorant-api.com/weaponskinchromas/092a25a4-422f-f577-37ac-26a5d489c155/fullrender.png",
                "swatch": null,
                "streamedVideo": null,
                "assetPath":
                    "ShooterGame/Content/Equippables/Guns/HvyMachineGuns/HMG/Airplane/Chromas/Standard/HMG_Airplane_Standard_PrimaryAsset"
              }
            ],
            "levels": [
              {
                "uuid": "578e9077-4f88-260c-e54c-b988425c60e4",
                "displayName": "Altitude Odin",
                "levelItem": null,
                "displayIcon":
                    "https://media.valorant-api.com/weaponskinlevels/578e9077-4f88-260c-e54c-b988425c60e4/displayicon.png",
                "streamedVideo": null,
                "assetPath":
                    "ShooterGame/Content/Equippables/Guns/HvyMachineGuns/HMG/Airplane/Levels/HMG_Airplane_Lv1_PrimaryAsset"
              }
            ],
          },
        ],
      }
    ]
  };

  static const jsonMockMaps = {
    "status": 200,
    "data": [
      {
        "uuid": "7eaecc1b-4337-bbf6-6ab9-04b8f06b3319",
        "displayName": "Ascent",
        "coordinates": "45°26'BF'N,12°20'Q'E",
        "displayIcon":
            "https://media.valorant-api.com/maps/7eaecc1b-4337-bbf6-6ab9-04b8f06b3319/displayicon.png",
        "listViewIcon":
            "https://media.valorant-api.com/maps/7eaecc1b-4337-bbf6-6ab9-04b8f06b3319/listviewicon.png",
        "splash":
            "https://media.valorant-api.com/maps/7eaecc1b-4337-bbf6-6ab9-04b8f06b3319/splash.png",
        "assetPath": "ShooterGame/Content/Maps/Ascent/Ascent_PrimaryAsset",
        "mapUrl": "/Game/Maps/Ascent/Ascent",
        "xMultiplier": 7E-05,
        "yMultiplier": -7E-05,
        "xScalarToAdd": 0.813895,
        "yScalarToAdd": 0.573242,
        "callouts": [
          {
            "regionName": "Tree",
            "superRegionName": "A",
            "location": {"x": 3980.9062, "y": -5938.758}
          },
          {
            "regionName": "Lobby",
            "superRegionName": "A",
            "location": {"x": 4489.032, "y": -3014.0515}
          },
          {
            "regionName": "Main",
            "superRegionName": "A",
            "location": {"x": 5321.6206, "y": -4710.1274}
          },
          {
            "regionName": "Window",
            "superRegionName": "A",
            "location": {"x": 4023.0244, "y": -8180.692}
          },
          {
            "regionName": "Site",
            "superRegionName": "A",
            "location": {"x": 6153.585, "y": -6626.2114}
          },
          {
            "regionName": "Spawn",
            "superRegionName": "Attacker Side",
            "location": {"x": 60, "y": 50}
          },
          {
            "regionName": "Lobby",
            "superRegionName": "B",
            "location": {"x": -1490.5864, "y": -1389.9706}
          },
          {
            "regionName": "Main",
            "superRegionName": "B",
            "location": {"x": -1983.6713, "y": -5840.8125}
          },
          {
            "regionName": "Boat House",
            "superRegionName": "B",
            "location": {"x": -4484.774, "y": -7763.3584}
          },
          {
            "regionName": "Bottom",
            "superRegionName": "Mid",
            "location": {"x": 1122.2262, "y": -5951.704}
          },
          {
            "regionName": "Site",
            "superRegionName": "B",
            "location": {"x": -2344.065, "y": -7548.511}
          },
          {
            "regionName": "Catwalk",
            "superRegionName": "Mid",
            "location": {"x": 2315.7944, "y": -4127.2554}
          },
          {
            "regionName": "Cubby",
            "superRegionName": "Mid",
            "location": {"x": 3387.3167, "y": -5129.764}
          },
          {
            "regionName": "Spawn",
            "superRegionName": "Defender Side",
            "location": {"x": 1995.2354, "y": -9744.923}
          },
          {
            "regionName": "Garden",
            "superRegionName": "A",
            "location": {"x": 3773.6653, "y": -7551.3535}
          },
          {
            "regionName": "Market",
            "superRegionName": "Mid",
            "location": {"x": 1089.1044, "y": -7363.1914}
          },
          {
            "regionName": "Courtyard",
            "superRegionName": "Mid",
            "location": {"x": 1222.7029, "y": -4586.6}
          },
          {
            "regionName": "Link",
            "superRegionName": "Mid",
            "location": {"x": -632.0929, "y": -4280.2573}
          },
          {
            "regionName": "Pizza",
            "superRegionName": "Mid",
            "location": {"x": 1801.5667, "y": -7262.1704}
          },
          {
            "regionName": "Rafters",
            "superRegionName": "A",
            "location": {"x": 6129.893, "y": -8210}
          },
          {
            "regionName": "Top",
            "superRegionName": "Mid",
            "location": {"x": 2753.9297, "y": -2129.6155}
          },
          {
            "regionName": "Wine",
            "superRegionName": "A",
            "location": {"x": 7358.7407, "y": -4689.2705}
          }
        ]
      }
    ]
  };
}
