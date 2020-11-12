import 'package:my_first_dart_console/flying_monster.dart';
import 'package:my_first_dart_console/monster.dart';

class MonsterKelelawar extends Monster implements FlyingMonster {
  @override
  String fly() => 'wuuusshh ... !';

  @override
  String eatHuman() {
    return 'Hisap darah!';
  }

  @override
  String move() {
    return 'Terbang ... !';
  }
}