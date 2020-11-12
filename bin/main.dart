import 'dart:io';

import 'package:my_first_dart_console/hero.dart';
import 'package:my_first_dart_console/monster.dart';
import 'package:my_first_dart_console/monster_hiu.dart';
import 'package:my_first_dart_console/monster_kelelawar.dart';

void main(List<String> arguments) {
  Hero h = Hero();
  Monster m = Monster();
  MonsterHiu mh = MonsterHiu();
  List<Monster> monsters = [];

  monsters.add(MonsterHiu());
  monsters.add(MonsterKelelawar());
  monsters.add(MonsterHiu());

  for (Monster mons in monsters) {
    if (mons is MonsterHiu) {
      print(mons.swim());
    } else if (mons is MonsterKelelawar) {
      print(mons.fly());
    }
    print(mons.eatHuman());
  }

  h.healthPoint = -10;
  m.healthPoint = 10;
  mh.healthPoint = 30;

  print("hero HP: " + h.healthPoint.toString());
  print("monster HP: " + m.healthPoint.toString());
  print("monster hiu HP: " + mh.healthPoint.toString());

  print(h.killAMonster());
  print(m.eatHuman());
  print(mh.eatHuman());
  print(mh.swim());
}