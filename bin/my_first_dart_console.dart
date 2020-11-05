import 'dart:io';

void main(List<String> arguments) {
  int number = int.tryParse(stdin.readLineSync());
  String output;
  String output2;
  String output3;

  output = (number > 0) ? 'positive number' : 'negative or zero number';

  if (number > 0) {
    output2 = 'positive number';
  } else {
    output2 = 'negative or zero number';
  }

  switch(number) {
    case 0:
      output3 = 'zero number';
      break;
    case 1:
      output3 = 'one';
      break;
    case 2:
      output3 = 'two';
      break;
    case 3:
      output3 = 'three';
      break;
    default:
      output3 = 'others';
      break;
  }

  print(output);
  print(output2);
  print(output3);
}
