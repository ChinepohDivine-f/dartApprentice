import 'package:chapter6/chapter6.dart' as chapter6;

void main() {
  final object = MyClass();
  object.myMethod();
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
