import 'dart:ffi';

import 'package:chapter6/chapter6.dart' as chapter6;

void main() {
  final object = MyClass();
  object.myMethod();

  // create and instace of user
  final user = User()
    ..id = 42
    ..name =
        'Boris Atoh'; // using cascading the semicolon appears on the last line
  print(user.toJson());
  print(user.toString());

  /// mini exercise 1
  final pass = Password()..value = '%Xjdfgnuh37gH';
  print(pass.toString());
  print(pass.isValid());
}

class MyClass {
  var myPorperty = 'Hello Dart!';

  // constructor
  MyClass();

  // method
  void myMethod() {
    print(this.myPorperty);
  }
}

// creating a sample user class
class User {
  int id = 0;
  String name = '';

  //ovride
  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }

  // sereliztion
  //  to json
  String toJson() {
    return '{"id": $id, "name":"$name"}';
  }
}

class Password {
  String value = '';

  @override
  String toString() {
    // TODO: implement toString
    return 'Password(value: $value)';
  }

  bool isValid() {
    if (value.length > 8) return true;
    return false;
  }
}

/// constructors 
/// they are methods used to create instances of a class
/// the return type of a constructor is the class itself
/// they have thesame name as the class
/// 
/// 
/// 
/// defualt constructor
/// this is provided by dart
/// 
/// 
/// 
/// custom constructor
/// written by the programmer
/// 
/// 
/// lon-form constructor
/// User (int id, String name) {
/// this.id = id;
/// this.name = name;
/// }
