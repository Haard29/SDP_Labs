/*
Mini Exercise:

1.  Create an empty list of type String. Name it months. Use the add method to add the names of the twelve months.
    void main(){
      List<string> months = [];
      months.add("January");
      months.add("February");
      months.add("March");
      months.add("April");
      months.add("May");
      months.add("June");
      months.add("July");
      months.add("August");
      months.add("September");
      months.add("October");
      months.add("November");
      months.add("December");
    }

2.  Make an immutable list with the same elements as in Mini-exercise 1.
    void main(){
      const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    }

3.  Use collection for to create a new list with the month names in all uppercase.
    void main(){
      const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
      var MONTHS = [for(var m in months) m.toUppercase()];
      print(MONTHS);
    }

4.  Create a map with the following keys: name, profession, country and city. Forthe values, add your own information.
    inal myMap = {
      'name': 'Haard',
      'profession': 'Student at DDU',
      'country': 'India',
      'city': 'Jamnagar',
    };
    print(myMap);
    }

5.  You suddenly decide to move to Toronto, Canada. Programmatically update the values for country and city.
     final myMap = {
    'name': 'Haard',
    'profession': 'Student',
    'country': 'India',
    'city': 'Jamnagar',
  };
    myMap['country'] = 'Canada';
    myMap['city'] = 'Toronto';
    print(myMap);
  }

6.  Iterate over the map and print all the values.
    for (var value in myMap.values) {
      print(value);
    }

7.  Given the following exam scores:
      final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  1. Use sort to find the highest and lowest grades.
    final scores = [89, 77, 46, 93, 82, 67, 32, 88];
    scores.sort();
    final lowest = scores.first;
    final highest = scores.last;
    print(lowest);
    print(highest);
    }
  2. Use where to find all the B grades, that is, all the scores
    between 80 and 90.
     final scores = [89, 77, 46, 93, 82, 67, 32, 88];
     final bGrades = scores.where((score) => score >= 80 && score < 90);
      print(bGrades);
    }

Challenges:

1.  Write a function that takes a paragraph of text and returns a collection of unique String characters that the text contains.
     Set<String> uniqueCodePoints(String text) {
      return text.runes
        .map((codePoint) => String.fromCharCode(codePoint))
        .toSet();
    }

      print(uniqueCodePoints(paragraphOfText));
    }

2.  Repeat Challenge 1, but this time have the function return a collection that contains the frequency, or count, of every unique character.
    Map<String, int> characterFrequencyMap(String text) {
    final characterFrequencyMap = <String, int>{};
    for (var codePoint in text.runes) {
      final character = String.fromCharCode(codePoint);
      final frequency = characterFrequencyMap[character] ?? 0;
      characterFrequencyMap[character] = frequency + 1;
    }
      return characterFrequencyMap;
    }

    print(characterFrequencyMap(paragraphOfText));
    }

3.  Create a class called User with properties for id and name. Make a List with three users, specifying any appropriate names and IDs you like. Then write a function that converts your user list to a list of maps whose keys are id and name.
    final users = [
    User(1, 'Haard'),
    User(2, 'Jaimin'),
    User(3, 'Darshik'),
    ];
  List<Map<String, Object>> usersToMapList(List<User> users) {
    final userMapList = <Map<String, Object>>[];
    for (var user in users) {
      final userMap = {
        'id': user.id,
        'name': user.name,
      };
      userMapList.add(userMap);
    }
    return userMapList;
  }

    print(usersToMapList(users));
}

class User {
  User(this.id, this.name);
  final int id;
  final String name;
}
*/