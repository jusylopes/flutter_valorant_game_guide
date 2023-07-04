import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/screens/agent_screen.dart';
import 'package:flutter_valorant_game_guide/screens/map_screen.dart';
import 'package:flutter_valorant_game_guide/screens/weapon_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const List<Tab> myTabs = <Tab>[
    Tab(child: Text('Agents')),
    Tab(child: Text('Weapons')),
    Tab(child: Text('Maps')),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: HomeScreen.myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ValorantColors.primaryColor,
          toolbarHeight: 120,
          titleTextStyle: const TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 30,
                  child: Image.asset(ValorantStrings.appLogo),
                ),
              ),
              const Text(
                ValorantStrings.appName,
              ),
            ],
          ),
          bottom: TabBar(
            tabs: HomeScreen.myTabs,
            indicator: const UnderlineTabIndicator(
              borderSide:
                  BorderSide(width: 3.0, color: ValorantColors.secondaryColor),
              insets: EdgeInsets.symmetric(horizontal: 50.0),
            ),
            unselectedLabelColor: Colors.grey,
            labelColor: ValorantColors.secondaryColor,
            labelStyle: TextStyle(
              fontSize: 18.0,
              fontFamily: ValorantStrings.productSansFont,
            ),
          ),
        ),
        body: const TabBarView(children: [
          AgentScreen(),
          WeaponScreen(),
          MapScreen(),
        ]),
      ),
    );
  }
}
