// import 'dart:js_interop';

// import 'package:chapter5/chapter5.dart' as chapter5;
// import 'dart:math';

void main(List<String> arguments) {
  /// as programmer always use the DRY(Dont Repeat Yourself principle)
  // in dart functions have
  // 1. return type
  // 2. function name
  // 3. function parameters
  // 4. return value
  /// this all make up the function signature
  /// the code between the brace is called the
  /// function body
  ///
  const input = 12;
  final output = compliment(input);
  print(output);

  /// we can use as many parameter as we want by separting them with ',' comma
  /// making parameters optional
  final greet = helloPersonAndPet('Chris', 'Boris');
  print(greet);
  // fullname function
  final withTitle = fullName('El', 'Boris', 'Sir');
  final withoutTitle = fullName('El', 'Boris');
  print(withTitle);
  print(withoutTitle);

  // we can also set the parameter to custom values but they must
  // be enclosed in the []

  /// Naming parameters
  /// here we use curly braces to close the parameters
  /// also using the required keyword will make the parameter required
  ///
  ///
  /// as progammer when writtin function avoid "sideEffects"
  /// they include: printing to the console, changing global varaibles
  ///
  /// use return statement and local variables as best practice
  ///
  /// Also functions should do only one thing to
  /// follow the Single Responsibility Principle
  ///
  /// Choose good names for funtions
  ///

  // mini exercises
  final complimentMe = youAreWonderful(name: 'Pete');
  print(complimentMe);

  /// Anonymous funtions in dart
  /// these are funtions without  name and a return type
  /// the return type will be infered by the funtion body
  ///
  ///
  /// First-citizens: function that can be treated like any other type
  ///
  ///
  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  // first class funtion
  Function multiply = (int a, int b) => a * b;

  Function myFunction = multiply;

  /// we can also pass funtions as parameters
  /// of other funtions
  ///
  ///using anonymous functions
  print(multiply(2, 4));

  //
  final triple = applyMuliplier(3); // return a function
  print(triple(6)); // uses the returned function to execute

  /// Anonymous funtions in forEach loops
  // asume an array
  const array = [1, 2, 3];
  array.forEach((element) {
    final triple = applyMuliplier(element);
    print(triple(3));
  });

  /// closure and scope
  /// anonymous funtions act as closures
  /// scope in dart is defined by a pair of curly braces
  ///
  ///
  print("--------------------------");
  var counter = 0;
  final incrimentCounter = () {
    // closer with anonymous functions
    counter += 1;
  };
  incrimentCounter();
  incrimentCounter();
  incrimentCounter();

  print(
      counter); // the value of counter can still be accessed out of the function

  /// mini exercise
  /// ex 1
  final wonderful = (String name) {
    print('$name, you are wonderful');
  };
  print(wonderful('Messi'));

  /// ex 2
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((name) => wonderful(name));

  /// arrow functions
  ///
  /// arrow functions in dart
  int add(int a, int b) => a + b;

  /// challenges
  ///
  // challenges
  // 1
  final x = isPrime(7);
  print(x);

  // 2
  final repeatTask = (int times, int input, Function task) {
    for (var i = 0; i < times; i++) input = task(input);
    return input;
  };

  final result = repeatTask(4, 2, (int value) {
    return value * value;
  });

  print(result);
}

/// end of main

String compliment(int number) {
  return '$number is a very nice number';
}

// funtion with two parameters
String helloPersonAndPet(String person, String pet) {
  return 'Hello $person and your friend, $pet';
}

// funtion with optional parameters
String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

// funtion with defined parameters
bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

// funtion with named parameters
bool withinToleranceNamed(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

// making value parameter required
bool withinToleranceNamedRequred(
    {required int value, int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

//// mini exercise
///
String youAreWonderful({required String name, numberPeople = 30}) {
  return "You're Wonderful, $name. $numberPeople people think so";
}

/// anonymous funtion can only be done in the block
// (int number) {
//   return '$number is a very nice number';
// }

/// Passing functions to functions
void namedFunction(Function anonymousFunction) {
  // function body
}

/// returning functions
///
Function anotherNamedFunction() {
  return () {
    print('Another function return....');
  }; // returned funtion
}

/// another funtion returning a function

Function applyMuliplier(num mulitplier) {
  return (num value) {
    return value * mulitplier;

    /// closure
  };
}

/// arrow functions in dart
int add(int a, int b) => a + b;

/// challenge 1

bool isPrime(int num) {
  // prime numbers are divisible by 1 and themselves
  if (num < 2) return false;
  for (var i = 2; i < num; i++) {
    // print(i);
    if (num % i == 0) return false;
  }
  return true;
}
