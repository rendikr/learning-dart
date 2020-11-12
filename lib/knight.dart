import 'package:my_first_dart_console/drink_ability_mixin.dart';
import 'package:my_first_dart_console/hero.dart';

class Knight extends Hero with DrinkAbilityMixin {
  @override
  int healthPoint;

  @override
  String killAMonster() {
    // TODO: implement killAMonster
    throw UnimplementedError();
  }

}