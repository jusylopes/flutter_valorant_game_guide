import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/resources/colors.dart';
import 'package:flutter_valorant_game_guide/resources/strings.dart';
import 'package:flutter_valorant_game_guide/views/agents_page.dart';

class AgentHomePage extends StatelessWidget {
  const AgentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
          bottom: TabBar(
              labelStyle: TextStyle(
                  fontSize: 18.0, fontFamily: ValorantStrings.productSansFont),
              indicatorColor: ValorantColors.secondaryColor,
              tabs: const [
                Tab(child: Text('Agents')),
                Tab(child: Text('Weapons')),
                Tab(child: Text('Maps')),
              ]),
        ),
        body: const TabBarView(children: [AgentsPage()]),
      ),
    );
  }
}
