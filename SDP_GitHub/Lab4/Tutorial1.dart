/*
Mini Exercise:

1.  Create a class called Password and give it a string property called value.
    class Password{
      string value = " ";
    }

2.  Override the toString method of Password so that it prints value.
    class Password{
      string value = " ";

      @override
      string toString(){
        return("Password {value : $value}");
      }
    }

3.  Add a method to Password called isValid that returns true only if the length of value is greater than 8.
    class Password{
      string value = " ";
      
      bool isValid(){
        if(value.length > 8) {return true; }
        else{ return false; }
      }
    }
    void main(){
      final pass = Password();
      value = "123456";
      print(pass.isValid());
    }
    //false.

4.  Given the following class:
    class Password{
      string value = " ";
    }
  1. Make value a finalvariable, but not private.
  2. Add a const constructor as the only way to initialize a Password object.
  class Password{
    const Pasword(this.value);
    final string value;
  }

Challenges:

1.  Create a Student class with final firstName and lastName String properties and a variable grade as an int property. Add a constructor to the class that initializes all the properties. Add a method to the class that nicely formats a Studentfor printing. Use the class to create students bert and ernie with grades of 95 and 85, respectively.
    class Student{
      Student(this.firstname, this.lastname, this.grade);
      final string firstnamel
      final string lastname;
      final int grade;

      @override
      string toString(){
        return "Student(Firstname: $firstname Lastname: $lastname Grade: $grade)";
      }
    }
    void main(){
      final bert = Student("bert", "watson", 95);
      final ernie = Student("Ernie", "yegar", 85);
      print(bert);
      print(ernie);
    }
    //Student (Firstname: bert, Lastname: watson, Grade: 95);
    //Student (Firstname: Ernie, Lastname: yegar, Grade: 85);

2.  Create a Sphere class with a const constructorthat takes a positive length radius as a named parameter. Add getters for the the volume and surface area but none for the radius. Don’t use the dart:math package but store your own version of pi as a static constant. Use your class to find the volume and surface area of a sphere with a radius of 12.
    class Sphere{
      const sphere(this.radius);
      final int radius;
      static double pi = 3.14159;

      double get getVolume{
        double volume = (4*pi*radius*radius*radius)/3;
        return volume;
      }
      double get getSurface{
        double surface = (4*pi*radius*radius);
        return surface;
      }
    }
    void main(){
      const sphere = Sphere(12);
      print(Sphere.getSurface);
      print(Sphere.getVolume);
    }
*/