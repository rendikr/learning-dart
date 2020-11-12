import 'package:my_first_dart_console/hero.dart';

/// on defines this mixin will only available for the said class
mixin DrinkAbilityMixin on Hero {
  String drink() => 'Gluk gluk gluk...';
}