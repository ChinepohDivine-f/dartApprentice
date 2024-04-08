import 'package:chapter6/chapter6.dart' as chapter6;

void main() {
  final object = MyClass();
  object.myMethod();

  // create and instace of user
  final user = User();
  user.id = 42;
  user.name = 'Boris Atoh';
  print(user.toJson());
  print(user.toString());
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
