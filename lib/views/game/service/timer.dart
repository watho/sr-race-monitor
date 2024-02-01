///
/// Simple Countdown Timer which counts $ticks seconds down.
///
class GameTimer {
  const GameTimer();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
