/*
Mini Exerecise:

1.  Create a constant called myAge and set it to your age. Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.
    void main(){
      const myAge = 19;
      const isTeenager = myAge >= 13 && myAge <= 19;
    }
    //isTeenager true.

2.  Create another constant named maryAge and set it to 30. Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and Mary are teenagers.
    void main(){
      const myAge = 30;
      const bothTeenagers = isTeenager && myAge >= 13 && myAge <= 19;
    }
    //bothTeenagers false.

3.  Create a String constant named reader and set it to your name. Create another String constant named ray and set it to 'Ray Wenderlich'. Create a Boolean constant named rayIsReader that uses string equality to determine if reader and ray are equal.
    void main(){
      const reader = "Haard"
      const ray = "Ray Wanderlich"
      const rayIsReader = reader == ray;
    }
    rayIsReader false.

4.  Create a constant named myAge and initialize it with your age. Write an if statement to print out “Teenager” if your age is between 13 and 19, and “Not a teenager” if your age is not between 13 and 19.
    void main(){
      const myAge = 19;
      if(myAge <= 19 AND myAge >= 13){
        print("Teenager");
      }
      else{
        print("Not an Teenager");
      }
    }

5.  Use a ternary conditional operator to replace the else-if statement that you used above. Set the result to a variable named answer.
    void main(){
      string answer;
      (myAge > 12 && myAge < 20) ? answer = "Teenager" : answer = "Not a Teenager";
    }
    //answer = Teenager.

6.  Make an enum called AudioState and give it values to represent playing, paused and stopped states.
    void main(){
      enum AudioState{
        playing,
        paused,
        stopped,
      }
    }

7.  Create a constant called audioState and give it an AudioState value. Write a switch statement that prints a message based on the value.
    void main(){
      const audiostate = AudioState.paused;
      Switch(audiostate){
        case AudioState.playing:
            print("Audio is playing");
            break;
        case AudioState.puased:
            print("Audio is paused");
            break;
        case AudioState.stopped:
            print("Audio is stopped");
            break;
      }
    }
    //Audio is paused.
*/