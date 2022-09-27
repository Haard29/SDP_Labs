/*
Mini Exercises:

1.  Declare a constant of type it called myAge and set it to your age.
    void main(){
      const myAge = 19;
    }

2.  Delcare a variable of type double called averageAge. Initially, set the variable to your own age. Then set it the average of your age and your friends age.
    void main(){
      double averageAge = 19;
      averageAge = (19 + 19) / 2;
    }

3.  Create a constant called testNumber and initialize it with whatever integer you'd like. Next, create another const called evenodd and set it equal to testNumber modulo 2.
    void main(){
      const testNumber = 29;
      Final evenodd = testNumber % 2;
    }


Challenges:

1.  Declare a constant int called myAge and set it equal to your age. Also declare an int variable called dogs and set that equal to the number of dogs you own. Then imagine you bought a new puppy and increment the dogs variable by one.
    void main(){
      int myAge = 19;
      int dogs = 1;
      dogs++;
    }

2.  Given the following code:
    age = 16;
    print(age);
    age = 30;
    print(age);
Modify the first line so that the code compiles.
    void main(){
      int age = 16;
      print(age);
      age = 30;
      print(age);
    }

3.  Consider the following code. Work out what each answer equals to when you add the following code:
      const x = 46;
      const y = 10;
      const answer1 = (x*100)+y;
      const answer2 = (x*100)+(y*100);
      const answer3 = (x*100)+(y/10);
  ->  answer1 = 4610,
      amswer2 = 5600,
      answer3 = 4601.

4.  Declare three constants called rating1, rating2 and rating3 of type double and assign each a value. Calculate the average of the three and store the result in a constant named averageRating.
    void main(){
      const double rating1 = 2.81;
      const double rating2 = 7.42;
      const double rating3 = 9.71;

      const averageRating = (rating1+rating2+rating3)/3;
    }

5.  A quadratic equation is something of the form

    a⋅x2 + b⋅x + c = 0.
    The values of x which satisfy this can be solved by using the equation
    x = (-b ± sqrt(b2 - 4⋅a⋅c)) / (2⋅a).
    Declare three constants named a, b and c of type double. Then calculate the two values for x using the equation above (noting that the ± means plus or minus, so one value of x for each). Store the results in constants called root1 and root2 of type double.
    void main(){
      double a = 1;
      double b = 3;
      double c = -2;
      double root1 = (-b + sqrt(b*b - 4*a*c))/(2*a);
      double root2 = (-b - sqrt(b*b - 4*a*c))/(2*a);
    }
*/