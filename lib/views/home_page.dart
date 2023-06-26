import 'package:flutter/material.dart';
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
          title: Text(
            ValorantStrings.appName,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColor),
          ),
          actions: const [],
          bottom: TabBar(
              labelStyle: const TextStyle(
                fontSize: 20.0,
              ),
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(child: Text('AGENTS')),
                Tab(child: Text('')),
                Tab(child: Text('')),
              ]),
        ),
        body: const TabBarView(children: [AgentsPage()]),
      ),
    );
  }
}
