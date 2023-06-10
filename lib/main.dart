import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_bloc.dart';
import 'package:flutter_valorant_game_guide/blocs/agent/agent_event.dart';
import 'package:flutter_valorant_game_guide/repositories/adapters/agent_adapter.dart';
import 'package:flutter_valorant_game_guide/repositories/repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final agentRepository =
        Repository(dio: Dio(), agentAdapter: AgentAdapter());

    return MultiBlocProvider(
      providers: [
        BlocProvider<AgentBloc>(
          create: (_) =>
              AgentBloc(repository: agentRepository)..add(AgentLoaded()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
      ),
    );
  }
}
