/*
Mini Exercise:

1.  Create a String? variable called profession, but don’t give it a value. Then you’ll have profession null.
    string? profession;
    print(profession);
    //NULL.

2.  Give profession a value of “basketball player”.
    print(profession);
    //BasketBall Player.

3.  Write the following line and then hover your cursor over the variable name. What type does Dart infer iLove to be?
    const iLove = "Dart";
    //String.


Challenges:

1.  Write a function thatrandomly returns 42 or null. Assign the return value of the function to a variable named result that will never be null. Give result a default of 0 if the function returns null.
    int ? random_return(){
      dynamic values = [42, NULL];
      var random = new random();
      int index = random.nextInt();
      return values[index];
    }
    void main(){
      int result = random_return ?? 0;
      print(result);
    }
    //Output can be 0 or 42.

2.  People around the world have different customs for giving names to children. It would be difficult to create a data class to accurately represent them all, but try it like this:
    Create a class called Name with givenName and surname properties. Some people write their surname last and some write it first. Add a Boolean property called surnameIsFirst to keep track of this. Not everyone in the world has a surname. Add a toString method that prints the full name.
    class Name{
      Name({required this.givenname, this.surname, this.surnameIsfirst = false});
      string givenname;
      string surname;
      bool surnameIsfirst;

      @override
      string toString(){
        string name;
        if(surnameIsfisrt = true){
          if(surname!=NULL) {name = surname + " " + givenname; }
          else {name = givenname; }
        }
        else{
          if(surname!=NULL) {name = givenname + " " + surname; }
          else { name = givenname; }
        }
        return "Name($name)";
      }
    }
    Input:  Name p1 = Name(givenname: "Haard");
            Name p2 = Name(givenname: "Haard", surname: "Dholakiya", surnameIsfirst: true);
            print(p1);
            print(p2);
            print(p3);
    Output: Name (Haard);
            Name (Haard Dholakiya)
            Name (Dholakiya Haard)
*/