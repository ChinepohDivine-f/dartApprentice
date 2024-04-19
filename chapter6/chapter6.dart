import 'dart:ffi';

import 'package:chapter6/chapter6.dart' as chapter6;
import 'user.dart';

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

  // using an anonyous user
  final anonymous = AUser.anonymnous();
  // print("$anonymous (id: $anonymous.id , name: $anonymous.name)");

  // private user
  final priverUser = AnonymousUser();
  print(priverUser.name);

  // StrangeUser with asserts
  final jb = StrangeUser(id: -1, name: 'Boris Atah');
  print(jb);
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
/// long-form constructor
/// User (int id, String name) {
/// this.id = id;
/// this.name = name;
/// }
///
///
/// short-from constructors
/// User ( this.id, this.name);
///
///
/// Named constructors
/// dart allows us to add itentifiers to class name
/// ClassName.identifierName()
///
/// we also have unamed constructors
///
///
/// User.anonymous() { // this is a named constructor
/// id = 0;
/// name = 'anonymous; // we do not need to use the 'this' here
/// }
///
/// we call name constructors in main like this
/// final anonymousUser = User.anonymous();
/// print(anonymousUser)
///
///
///
/// It's good to set defual values for properties of
/// a class

// class AnotherUser{
//    AnotherUser ({int id = 0, String name='anonymous'})
//    : _id=id,
//    _name=name;
// }

class AUser {
  AUser.anonymnous() {
    int id;
    String name;
  }
}

class OptionalProp {
  final myProperty;
  const OptionalProp(
      {this.myProperty}); // this property will not change after it has been assigned
}

// factory constructors

// generative constructors can only generate an instance of the class but
// factory constructors can return existing instances of the class or even sub classes of it.

class FactoryUser {
  final int id = 0;
  final String name = '';

  factory FactoryUser.ray(id, name) {
    return FactoryUser.ray(id, name);
  }
}
