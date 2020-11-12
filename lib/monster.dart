import 'package:my_first_dart_console/character.dart';

/// abstract class defines the object cannot be instantiated
abstract class Monster extends Character {
  String eatHuman() => 'Grr... delicious human!';
  String move();
}