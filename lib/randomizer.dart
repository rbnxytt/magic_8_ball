import 'dart:math';

class Randomizer {
  int _number = 1;

  int get number => _number;
  void randomize() => _number = Random().nextInt(5) + 1;
}
