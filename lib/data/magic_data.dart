import 'package:magic_8_ball/randomizer.dart';

class MagicData {
  final Randomizer randomizer = Randomizer();

  int _num = 1;

  String _imageSrc() {
    return 'images/ball$_num.png';
  }

  String get imageSrc => _imageSrc();

  void getNum() {
    randomizer.randomize();
    _num = randomizer.number;
  }
}
