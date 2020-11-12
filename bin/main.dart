import 'dart:io';

import 'package:my_first_dart_console/drink_ability_mixin.dart';
import 'package:my_first_dart_console/flying_monster.dart';
import 'package:my_first_dart_console/hero.dart';
import 'package:my_first_dart_console/knight.dart';
import 'package:my_first_dart_console/monster.dart';
import 'package:my_first_dart_console/monster_hiu.dart';
import 'package:my_first_dart_console/monster_kelelawar.dart';

void main(List<String> arguments) {
  Hero h = Hero();
  MonsterHiu mh = MonsterHiu();
  List<Monster> monsters = [];

  Knight k = Knight();
  print(k.drink());

  monsters.add(MonsterHiu());
  monsters.add(MonsterKelelawar());
  monsters.add(MonsterHiu());

  for (Monster mons in monsters) {
    if (mons is MonsterHiu) {
      print(mons.swim());
    } else if (mons is MonsterKelelawar) {
      print(mons.fly());
    } else if (mons is FlyingMonster) {
      print((mons as FlyingMonster).fly());
    } else if (mons is DrinkAbilityMixin) {
      print((mons as DrinkAbilityMixin).drink());
    }
    print(mons.eatHuman());
  }

  h.healthPoint = -10;
  mh.healthPoint = 30;

  print("hero HP: " + h.healthPoint.toString());
  print("monster hiu HP: " + mh.healthPoint.toString());

  print(h.killAMonster());
  print(mh.eatHuman());
  print(mh.swim());
}