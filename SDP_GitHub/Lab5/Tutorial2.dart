/*
Mini Exercise:

1.  Create a class named Fruit with a String field named color and a method named describeColor, which uses colorto print a message.
    final fruit = Fruit('yellow');
  fruit.describeColor();
}

class Fruit {
  Fruit(this.color);
  final color;
  void describeColor() {
    print("This fruit's color is $color.");
  }
}

2.  Create a subclass of Fruit named Melon and then create two Melon subclasses named Watermelon and Cantaloupe.
  final melon = Melon('blue');
  final watermelon = Watermelon('red and green');
  final cantaloupe = Cantaloupe('orange');
  melon.describeColor();
  watermelon.describeColor();
  cantaloupe.describeColor();
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

// class Watermelon extends Melon {
//   Watermelon(String color) : super(color);
// }
class Cantaloupe extends Melon {
  Cantaloupe(String color) : super(color);
}

3.  Override describeColorin the Watermelon class to vary the output.
    final fruit = Fruit('yellow');
  final watermelon = Watermelon('red and green');
  fruit.describeColor();
  watermelon.describeColor();
}

class Watermelon extends Melon {
  Watermelon(String color) : super(color);
  @override
  void describeColor() {
    print("The color of this watermelon is $color.");
  }
}

4.  Create an interface called Bottle and add a method to it called open.
5.  Create a concrete class called SodaBottle that implements Bottle and prints “Fizz fizz” when open is called.
6.  Add a factory constructor to Bottle that returns a SodaBottle instance.
7.  Instantiate SodaBottle by using the Bottle factory constructor and call open on the object.

    final bottle = Bottle();
  bottle.open();
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz fizz');
  }
}

8.  Create a class called Calculator with a method called sum that prints the sum of any two integers you give it.
9.  Extract the logic in sum to a mixin called Adder.
10. Use the mixin in Calculator.

    final calculator = Calculator();
  calculator.sum(4, 6);
}

// class Calculator {
//   void sum(num a, num b) {
//     print('The sum is ${a + b}.');
//   }
// }

class Calculator with Adder {}

mixin Adder {
  void sum(num a, num b) {
    print('The sum is ${a + b}.');
  }
}

Challenges:

1.  Dart has a class named Comparable, which is used by the the sort method of List to sort its elements. Add a weight field to the Platypus class you made in this lesson. Then make Platypus implement Comparable so that when you have a list of Platypus objects, calling sort on the list will sort them by weight.
    final p1 = Platypus1(weight1: 1.8);
    final p2 = Platypus1(weight1: 2.9);
    final p3 = Platypus1(weight1: 3.5);
    final p4 = Platypus1(weight1: 5.4);
    final p5 = Platypus1(weight1: 4.7);

    final platypi = [p1, p2, p3, p4, p5];

  platypi.forEach((platypus) => print(platypus.weight1));
  print('---');

  platypi.sort();
  platypi.forEach((platypus) => print(platypus.weight1));
}

class Platypus1 extends Animal1 with EggLayer1 implements Comparable {
  Platypus1({this.weight1});
  final weight1;

  @override
  void eat() {
    print('Yum Yum');
  }

  @override
  void move() {
    print('Walk Walk');
  }

  @override
  int compareTo(other) {
    if (this.weight1 > other.weight1) {
      return 1;
    } else if (this.weight1 < other.weight1) {
      return -1;
    }
    return 0;
  }
}

mixin EggLayer1 {
  void layEggs() {
    print('Eggs layed');
  }
}

abstract class Animal1 {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

2.  Design an interface to sit between the business logic of your note-taking app and a SQL database. After that, implement a fake database class that will return mock data.
    final database = DataStorage();
  final note = database.findNote(42);
  final allNotes = database.allNotes();
  database.saveNote('Water the flowers.');
  print(note);
  print(allNotes);
}

abstract class DataStorage {
  factory DataStorage() => FakeDatabase();
  String findNote(int id);
  List<String> allNotes();
  void saveNote(String note);
}

class FakeDatabase implements DataStorage {
  @override
  String findNote(int id) {
    return 'This is a note.';
  }

  @override
  List<String> allNotes() {
    return [
      'This is a note.',
      'This is different note.',
      'We are happy.',
    ];
  }

  @override
  void saveNote(String note) {
    // Saving note.
  }
}

3.  Dart has a Duration class for expressing lengths of time. Make an extension on int so that you can express a duration like so:
    final timeRemaining = 3.minutes;

    final timeRemaining = 3.minutes;
  print(timeRemaining);
}

extension on int {
  Duration get minutes => Duration(minutes: this);
}
*/