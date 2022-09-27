/*
Mini Exercise:

1.  Write a function named youAreWonderful, with a String parameter called name. It should return a string using name, and say something like “You’re wonderful, Bob.”
    String youAreWonderful(String name){
    return "You are wonderful,$name";
    }

2.  Add another int parameter to that functino called numberPeople so that the function returns something like "You're wonderful Bob. 10 people think so".
    String youAreWonderful(String name, int numberPeople){
    return "You are wonderful,$name. $numberPeople think so";
    }

3.  Make both inputs named parameters. Make name required and set numberPeople to have a default of 30.
    String youAreWonderful({required String name, int numberPeople = 30}){
    return "You are wonderful,$name. $numberPeople think so";
    }

4.  Change the youAreWonderfulfunction in the first mini-exercise of this chapter into an anonymous function. Assign it to a variable called wonderful.
    function wonderful = ({required String name, int numberPeople = 30}){
    return "You are wonderful,$name. $numberPeople think so";
    };
    wonderful("Bob")

5.  Using forEach, print a message telling the people in the following list that they’re wonderful.
    const people = ['Chris', 'Tiffani', 'Pablo'];
    people.forEach((p)){
    print("You are beautiful,$p")
    };

6.  Change the forEach loop in the previous “You’re wonderful” mini-exercise to use arrow syntax.
    const people = ['Chris', 'Tiffani', 'Pablo'];
    people.forEach((p) => print("You are beautiful,$p"));

Challenges:

1.  Write a function that checks if a number is prime.
    bool isPrime(N) {
    for (var i = 2; i <= N / i; ++i) {
      if (N % i == 0) {
        return false;
      }
    }
      return true;
    }
    isPrime(10); //false

2.  Write a function named repeatTask with the followingdefinition:
  int repeatTask(int times, int input, Function task)
It repeats a given task on inputfor times number of times. Pass an anonymous function to repeatTask to square the input of 2 four times. Confirm that you get the result 65536, since 2 squared is 4, 4 squared is 16, 16 squared is 256, and 256 squared is 65536.
    int repeatTask(int times, int input, Function task){
      while(times-- != 0){
        input = task(input);
      }
      return input;
    }
    //print(repeatTask(4, 2, (n)  return {n*n;}));
    //65536

3.  Update Challenge 2 to use arrow syntax.
    print(repeatTask(4, 2, (n) => n*n;));
*/