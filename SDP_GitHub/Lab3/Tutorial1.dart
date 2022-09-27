/*
Mini Exercise:

1.  Create a variable named counter and set it equal to 0. Create a while loop with the condition counter < 10. The loop body should print out “counter is X” (where X is replaced with the value of counter) and then increment counter by 1.
      var counter = 0;
      while (counter < 10) {
        print("counter is ${counter}");
        counter++;
      }

2.  Write a for loop starting at 1 and ending with 10 inclusive. Print the square of each number.
      for (var i = 1; i <= 10; i++) {
      print("Squre of ${i} = ${i * i}");
      }        
3.  Write a for-in loop to iterate overthe following collection of numbers. Print the square root of each number.
      const numbers = [1, 2, 4, 7];
      for (var i in numbers) {
        print("Squre of ${i} = ${i * i}");
      } 

4.  Repeat Mini-exercise 3 using a forEach loop.
      const numbers = [1, 2, 4, 7];
      numbers.forEach((i) {
        print("Squre of ${i} = ${i * i}");
      });

Challenges:

1.  Here lastname variable only accesible inside if block bcz it is declred with const keyword. so we can not accessible outside the if or else if block.
      const firstName = 'Ray';
      if (firstName == 'Bob') {
        const lastName = 'Smith';
      } else if (firstName == 'Ray') {
        const lastName = 'Wenderlich';
      }

2.  In each of the following statements, what is the value of boolean expressions?
      print("${true && true}");                          //true
      print("${false || false}");                        //false
      print("${(true && 1 != 2) || (4 > 3 && 100 < 1)}");//true
      print("${((10 / 2) > 3) && ((10 % 2) == 0)}");     //true

3.  Given a number, determine the next power of two above or equal to that number. Powers of two are the numbers in the sequence of 21, 22, 23, and so on. You may also recognize the series as 1, 2, 4, 8, 16, 32, 64...
      int n = 33, k = 1;
      bool flag = false;
      while (!flag) {
        num power = pow(2, k);
        if (n / power <= 1) {
          flag = true;
        }else {
          k++;
        }
      }
      print(k);

4.  Calculate the nth Fibonacci number. The Fibonacci sequence starts with 1, then 1 again, and then all subsequent numbers in the sequence are simply the previous two values in the sequence added together (1, 1, 2, 3, 5, 8...). You can get a refresher here:
      int n = 10;
      int n1 = 1, n2 = 1, n3;
      print(n1);
      print(n2);
      for (int i = 2; i <= n; i++) {
        n3 = n1 + n2;
        print('$n3');
        n1 = n2;
        n2 = n3;
      }

5.  In the following for loop, what will be the value of sum, and how many iterations will happen?
      var sum = 0;
      var counter = 0;
      for (var i = 0; i <= 5; i++) {
        sum += i;
        counter++;
      }
      print("${sum}");
      print("${counter}");

6.  Print a countdown from 10 to 0.
      for (var i = 10; i >= 0; i--) {
        print("${i}");
      }

7.  Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.
      for (double i = 0; i <= 10; i++) {
        print("${i / 10}");
      }
*/