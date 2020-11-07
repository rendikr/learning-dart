import 'dart:io';

// will return something
double luas_segiempat(double panjang, double lebar) {
  return panjang * lebar;
}

double luas_segiempat_arrow_function(double panjang, double lebar) =>
    panjang * lebar;

// will not return something
void sapa() {
  print('Hello!');
}

/** optional parameter */
/** on using {}, when the function is called, we need to provide to parameter name
 ** on using [], we don't have to provide the parameter name, only provide by the parameter position
 ** we are able to set the default value for the parameter input by using the = (equal) sign. example: {String to = 'somebody'}
 */
String sayNamedParameter(String from, String message,
    {String to = 'somebody', String appName = 'chat app'}) {
  return from +
      ' say ' +
      message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

String sayPositionedParameter(String from, String message,
    [String to = 'somebody', String appName = 'chat app']) {
  return from +
      ' say ' +
      message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

/** anonymous function
 * a function that doesn't have any name, usually created for one time only
 * example: the mathFunction
 */
int doMathOperator(int number1, int number2, Function mathFunction) {
  return mathFunction(number1, number2);
}

void main(List<String> arguments) {
  /**
   * LIST MAPPING COURSE
   */
  List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> list = [1, 2, 3];

  // GET VALUE BY INDEX
  int e = list[0];
  print(e);

  // CHANGE A VALUE BY  INDEX
  print('- CHANGE VALUE -');
  list[0] = 10;
  print(list[0]);

  // FOR LOOP
  print('- FOR LOOP -');
  for (int index = 0; index < list.length; index += 1) {
    print(list[index]);
  }

  // SIMPLIFIED FOR LOOP
  print('- SIMPLIFIED FOR LOOP -');
  for (int bilangan in list) {
    print(bilangan);
  }

  // FOREACH
  print('- FOR EACH -');
  list.forEach((bilangan) {
    print(bilangan);
  });

  // ADD ANOTHER VALUE TO LIST
  myList.add(10);
  myList.addAll(list); // ADD the List 'list' into the 'myList'
  myList.insert(1, 20); // ADD a value into specific index
  myList.insertAll(3, [30, 40, 20]);
  myList.remove(20);
  myList.removeLast(); // REMOVE THE LAST VALUE
  myList.removeRange(1, 2); // REMOVE VALUE FROM INDEX RANGE

  if (myList.contains(10)) {
    print('has 10!');
  }

  if (myList.every((number) => number % 2 == 0)) {
    print('All values are odd number!');
  } else {
    print('Not all values are odd number!');
  }

  if (myList.isNotEmpty) {
    print('tidak kosong');
  }

  print('- MY LIST -');
  myList.forEach((bilangan) {
    print(bilangan);
  });


  /**
   * NUMBER COURSE
   */

  double p, l, luas, luas_arrow_function;

  p = double.tryParse(stdin.readLineSync());
  l = double.tryParse(stdin.readLineSync());

  luas = luas_segiempat(p, l);
  luas_arrow_function = luas_segiempat_arrow_function(p, l);

  print(luas);
  print(luas_arrow_function);

  Function f;
  f = luas_segiempat;

  print(f(p, l));

  sapa();

  print(
      sayNamedParameter('Johny', 'Hello', to: 'Doloris', appName: 'whatsapp'));
  print(sayPositionedParameter('Johny', 'Hello', 'Doloris', 'whatsapp'));

  /** anonymous function
   * a function that doesn't have any name, usually created for one time only
   */
  print(doMathOperator(1, 2, (a, b) {
    return a + b;
  }));

  for (int counter = 0; counter < 5; counter++) {
    print('Halo ' + counter.toString());
  }

  int i = 0;
  while (i < 5) {
    print('while ke ' + i.toString());
    i++;
  }

  int x = 0;
  do {
    print('do ke ' + x.toString());
    x++;
  } while (x < 5);

  int a, b;
  a = 10;
  b = a++;

  // the result will be `11 | 10`
  print(a.toString() + ' | ' + b.toString());
}
