void main(List<String> args) {
  var user = User();

  user.sayHello(); //Say hello mixini calisir!

  var admin = Admin();
  admin.sayHello(); //CanSayHello mixini calisir!

  print('-----------------');

  var client1 = Client();
  var client2 = Client2();

  client1.method(); //super - Hey mixin!
  client2.method(); //my super - Hey mixin!
}

class Person {
  void sayHello() => print('Person hello!');
}

mixin CanSayHello {
  void sayHello() => print('CanSay hello!');
}

mixin SayHello {
  void sayHello() => print('Say hello!');
}

class User extends Person with CanSayHello, SayHello {}

class Admin extends Person with SayHello, CanSayHello {}

///🎖 Specialized mixins
///What if you would want to be able to invoke a method defined in a superclass within a mixin?

abstract class Super {
  void method() => print('super');
}

class Mysuper implements Super {
  @override
  void method() {
    print('my super');
  }
}

mixin MyMixin on Super {
  @override
  void method() {
    super.method();
    print('Hey mixin!');
  }
}

class Client extends Super with MyMixin {}

class Client2 extends Mysuper with MyMixin {}
