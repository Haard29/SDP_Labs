/*
Mini Exercise:

1.  Use the Future.delayed constructor to provide a string after two seconds that says “I am from the future.”
    void main(){
      final msg = Future<string>.delayed(
        Duration(seconds:2),
        ()=>'I am from the future',
      );
      print(msg);
    }

2.  Create a String variable named message that awaits the future to complete with a value.
    void main(){
      final msg = await Future<string>.delayed(
        Duration(seconds:2),
        ()=>'I am from the future',
      );
      print(msg);
    }

3.  Surround the code above with a try-catch block.
    future<void> main() async{
      try{
        final msg = await future<string>.delayed(
          Duration(seconds:2),
          ()=>'I am from the future',
        );
        print(msg);
      }
      catch(exceptino){
        print(exceptino);
      }
    }

4.  The following code produces a stream that outputs an integer every second and then stops after the tenth time.
      Stream<int>.periodic(
        Duration(seconds: 1),
        (value) => value,
      ).take(10);
    1. Set the stream above to a variable named myStream.
      future<void> main async{
        final myStream = Stream<int>.periodic(
          Duration(seconds:1),
          (value)=>value,
        ).take(10);
      }
    2. Use await for to print the value of the integer on each
      data event coming from the stream.
      future<void> main async{
        final myStream = Stream<int>.periodic(
          Duration(seconds:1),
          (value)=>value,
        ).take(10);
        await for(var number in myStream){
          print(number);
        }
      }
      //0
        1
        2
        3
        4
        5
        6
        7
        8
        9

Challenges:

1.  This is a fun one and will test how well you understand how Dart handles asynchronous tasks. In what order will Dart print the text with the following print statements? Why?
    void main() {
      print('1 synchronous');
      Future(() => print('2 event queue')).then(
      (value) => print('3 synchronous'),
      );
      Future.microtask(() => print('4 microtask queue'));
      Future.microtask(() => print('5 microtask queue'));
      Future.delayed(
      Duration(seconds: 1),
      () => print('6 event queue'),
      );
      Future(() => print('7 event queue')).then(
      (value) => Future(() => print('8 event queue')),
      );
      Future(() => print('9 event queue')).then(
      (value) => Future.microtask(
      () => print('10 microtask queue'),
      ),
      );
      print('11 synchronous');
      }
  Output:   1 synchronous
            11 synchronous
            4 microtask queue
            5 microtask queue
            2 event queue
            3 synchronous
            7 event queue
            9 event queue
            10 microtask queue
            8 event queue
            6 event queue
      Synchronous tasks are always run first,
      Microtask queue is always before the event queue,
      Event queue will run after this,
      'Then' callback runs synchronously,
      After this, 9, 10 and 8-6 will run.
      Now, there is no more synchronous code, so the program gets terminated.
*/