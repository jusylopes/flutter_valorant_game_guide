import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/screens/agents_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Tab> myTabs = <Tab>[
    Tab(child: Text('Agents')),
    Tab(child: Text('Weapoins')),
    Tab(child: Text('Maps')),
  ];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
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
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          bottom: const TabBar(tabs: myTabs),
        ),
        body: const TabBarView(children: [
          AgentsScreen(),
          AgentsScreen(),
          AgentsScreen(),
        ]),
      ),
    );
  }
}
