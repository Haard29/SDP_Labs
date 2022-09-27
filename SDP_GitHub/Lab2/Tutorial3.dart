/*
Mini Exercise:

1.  Create a constant called age1 and set it equal to 42. Create another constant called age2 and set it equal to 21. Check that the type for both constants has been inferred correctly as int by hovering your mouse pointer over the variable names in VS Code.
    void main(){
      const age1 = 42;
      const age2 = 21;
    }
  
2.  Create a constant called averageAge and set it equal to the average of age1 and age2 using the operation (age1 + age2) / 2. Hover your mouse pointer over averageAge to check the type. Then check the result of averageAge. Why is it a double if the components are all int?
    void main(){
      const averageAge = (age1 + age2) / 2;
      //double type
    }

3.  Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.
    void main(){
      const firstName = "Haard";
      const lastName = "Dholakiya";
    }

4.  Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.
    void main(){
      const fullName = firstName + ' ' + lastName;
      //Haard Dholakiya
    }

5.  Using interpolation, create a string constant called myDetails that uses the fullName constant to create a string introducing yourself. For example, Ray Wenderlich’s string would read: Hello, my name is Ray Wenderlich.
    void main(){
      const myDetails = "Hello World! I am $fullName.";
      //Hello World! I am Haard Dholakiya.
    }


Challenges:

1.  You’re a teacher, and in your class, attendance is worth 20% of the grade, the homework is worth 30% and the exam is worth 50%. Your student got 90 points for her attendance, 80 points for her homework and 94 points on her exam. Calculate her grade as an integer percentage rounded down.
    void main(){
      const attendance = 90;
      const homework = 80;
      const exam = 94;
      int percentage = (attendance*0.2 + homework*0.3 + exam*0.5).toInt();
      print(percentage);
    }
    o/p: 89%

2.  What is wrong with the following code?
      const name = "Ray";
      name += "Wanderlich";
  ->  constant values cannot be modified after initialization.

3.  What's the type of value?
      const value = 10/2;
  ->  Type of value is double.

4.  What is the value of the constant named summary?
      const number = 10;
      const multiplier = 5;
      Final summary = "$number*$multiplier = ${number*multiplier}";
  ->  summary = 10*5 = 50.
*/