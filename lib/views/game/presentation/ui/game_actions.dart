import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_race_monitor/views/game/presentation/bloc/game_state_bloc.dart';

class GameActions extends StatelessWidget {
  const GameActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameStateBloc, GameStateState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...switch (state) {
              GameStateInitial() => [
                  FloatingActionButton(
                    child: const Icon(Icons.play_arrow),
                    onPressed: () => context
                        .read<GameStateBloc>()
                        .add(TimerStarted(duration: state.duration)),
                  ),
                ],
              TimerRunInProgress() => [
                  // FloatingActionButton(
                  //   child: const Icon(Icons.pause),
                  //   onPressed: () =>
                  //       context.read<GameStateBloc>().add(const TimerPaused()),
                  // ),
                  FloatingActionButton(
                    child: const Icon(Icons.replay),
                    onPressed: () =>
                        context.read<GameStateBloc>().add(const TimerReset()),
                  ),
                ],
              // TimerRunPause() => [
              //     FloatingActionButton(
              //       child: const Icon(Icons.play_arrow),
              //       onPressed: () =>
              //           context.read<GameStateBloc>().add(const TimerResumed()),
              //     ),
              //     FloatingActionButton(
              //       child: const Icon(Icons.replay),
              //       onPressed: () =>
              //           context.read<GameStateBloc>().add(const TimerReset()),
              //     ),
              //   ],
              TimerRunComplete() => [
                  FloatingActionButton(
                    child: const Icon(Icons.replay),
                    onPressed: () =>
                        context.read<GameStateBloc>().add(const TimerReset()),
                  ),
                ]
            }
          ],
        );
      },
    );
  }
}
