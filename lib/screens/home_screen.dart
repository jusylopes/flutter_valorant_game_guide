import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/screens/agents_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Tab> myTabs = <Tab>[
    Tab(child: Text('Agents')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/images/valorant-logo.png'),
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
        ]),
      ),
    );
  }
}
