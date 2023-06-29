import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_state.dart';
import 'package:flutter_valorant_game_guide/models/agent.dart';
import 'package:flutter_valorant_game_guide/models/enum/agent_status.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_card.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_circular_progress_indicator.dart';
import 'package:flutter_valorant_game_guide/screens/widgets/agent_error_message.dart';

class AgentsScreen extends StatefulWidget {
  const AgentsScreen({super.key});

  @override
  State<AgentsScreen> createState() => _AgentsScreenState();
}

class _AgentsScreenState extends State<AgentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<AgentBloc, AgentState>(
          builder: (context, state) {
            switch (state.status) {
              case AgentStatus.initial:
              case AgentStatus.loading:
                return const AgentCircularProgressIndicator();
              case AgentStatus.success:
                return GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: state.agents.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 20,
                      ),
                  itemBuilder: (_, index) {
                    final Agent agent = state.agents[index];
                    return AgentCard(agent: agent);
                  },
                );
              case AgentStatus.error:
                return AgentErrorMessage(
                  errorMessage: state.errorMessage!,
                );
            }
          },
        ),
      ),
    );
  }
}
