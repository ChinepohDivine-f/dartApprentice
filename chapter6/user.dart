// private attriubes helps us to upgrade our security

class AnonymousUser {
  int _id = 0;
  String name;
   AnonymousUser({int id = 0, String name = 'anonymous'})
      : _id = id,
        name = name {
    print('User name is $name');
  }


}


// testing in dart

class StrangeUser {
  final int _id;
  final String _name;
  StrangeUser({int id = 0, String name = 'anonymous'})
      : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;
}

// adding the final and const keyword make a variable immutable in dart
// and can be incase you dont want add the private syntax to the class


// if the fields are final, then we can make the constructor a const


// factory method uses te generative constru