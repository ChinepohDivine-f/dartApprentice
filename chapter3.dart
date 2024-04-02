import 'dart:io';
import 'dart:math';

import 'package:chapter3/chapter3.dart' as chapter3;

void main(List<String> arguments) {
  print('Hello world: ${chapter3.calculate()}!');

// chapter 4
  // mini exercises

  // execise 1
  const myAge = 19;
  const isTeenager = (myAge >= 13 && myAge <= 19) ? true : false;
  print(isTeenager);

  // execise 2

  const maryAge = 30;
  const bothTeenagers =
      (isTeenager && maryAge >= 13 && maryAge <= 19) ? true : false;
  print(bothTeenagers);

  // exercise 3

  const reader = 'Chinepoh Divine-f';
  const ray = 'Ray Wenderlich';
  const rayIsReader = (reader == ray) ? true : false;
  print(rayIsReader);

  // mini exercise 2
  // constant my age already exit
  // using if and else

  if (myAge >= 13 && myAge <= 19)
    print('Teenager');
  else
    print('Not a Teenager');

  // using tenary operator

  (myAge >= 13 && myAge <= 19) ? print('Teenager') : print("Not a Teenager");

  // switch case
//   switch (variable) {
//     case value1:
//     // code
//     break;
//     case value2:
//     // code
//     break;
//     defualt:
//     //code
// }

// enum Weather {
//   sunny,
//   rainy,
//   cloudy,
// }

// enum AudioState {
//   playing = 1,
//   paused,
//   stopped,
// }

  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a size');
  }
  print('finally, you got a six!');

  // mini exercise on loops  for for, while and do-while loops

  // while loop
  int counter = 0;
  while (counter < 10) {
    print('counter is $counter');
    counter++;
  }

  // for loop

  for (counter = 0; counter <= 10; counter++) {
    print(counter * counter);
  }

  // for-in
  const numbers = [1, 2, 4, 7];
  // for (var i in numbers) {
  //   print(numbers[i] * numbers[i]);
  // }

  numbers.forEach((element) => print(element * element));

  /// challenges
  ///
// challenge 1
  // const firstName = 'Bob';
  // if (firstName == 'Bob') {
  //   const lastName = 'Smith';
  // } else if (firstName == 'Ray') {
  //   const lastName = 'Wenderlich';
  // }
  // final fullName = firstName + ' ' + lastName; // last name is a constant

  // challenge 2
// true
// false
// true
// true

// challenge 3

// get the number
//
  print("Next power of two");
  const sampleNumber = 10;
  for (int i = 0; i < sampleNumber; i++) {
    var powerOfTwo = pow(2, i);
    if (powerOfTwo >= sampleNumber) {
      print('next power of two given:  $sampleNumber is $powerOfTwo');
      break;
    }
    // if()5
  }

  // fibonacci
  int a = 0;
  int b = 1;
  int temp;
  for (int i = 0; i < sampleNumber; i++) {
    temp = a;
    a = b;
    b = a + temp;
    print("$a and $b");
  }

  // HOw many times?
  print('--------------------how many times');
  var sum = 0;
  for (var i = 0; i <= 5; i++) {
    sum += 1;
  }
  print(sum);

  print('Final countdown');
  for (var count = 10; count > 0; count--) {
    print(count);
    sleep(Duration(milliseconds: 100));
  }
  print('April Fool');

  /// print a sequence
  var i = 0.0;
  while (i < 1) {
    print(i.toStringAsFixed(1));
    i += 0.1;
  }
}
