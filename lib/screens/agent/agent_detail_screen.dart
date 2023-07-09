import 'package:flutter/material.dart';
import 'package:flutter_valorant_game_guide/models/agent_model.dart';
import 'package:flutter_valorant_game_guide/screens/agent/abilities_list_view.dart';
import 'package:flutter_valorant_game_guide/screens/agent/agent_cached_network_image.dart';
import 'package:flutter_valorant_game_guide/screens/agent/agent_detail_app_bar.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/back_button_screen.dart';

class AgentDetailScreen extends StatelessWidget {
  const AgentDetailScreen({super.key, required this.agent});
  final AgentModel agent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      final double maxHeight = constraints.maxHeight;

      return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AgentDetailAppBar(
                      agent: agent,
                      maxHeight: maxHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        "// BIOGRAPHY",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      child: Text(
                        agent.description,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "// SPECIAL ABILITIES",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
                Hero(
                  tag: agent.uuid,
                  child: Padding(
                     padding: const EdgeInsets.only(left: 200),
                    child: AgentCachedNetworkImage(
                      agent: agent,
                      sizeImage: maxHeight / 2.1,
                    ),
                  ),
                ),
                const BackButtonScreen(),
              ],
            ),
          ),
          AbilitiesListView(agent: agent),
        ],
      );
    }));
  }
}
