import 'package:my_first_dart_console/monster.dart';

class MonsterHiu extends Monster {
  String swim() => 'Glub glub ... !';

  @override
  String eatHuman() {
    return 'Cabik cabik!';
  }

  @override
  String move() {
    return 'Berenang ...!';
  }
}