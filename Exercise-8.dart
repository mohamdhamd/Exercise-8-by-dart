import 'dart:io';
import 'dart:math';
void main(){
  print("let's play Rock paper scissors with me.");
  while (true) {
    print("Enter your choice (rock, paper, scissors) or 'quit' to exit:");
    String userInput = stdin.readLineSync()!.toLowerCase();
    if(userInput == "quit" || userInput =="exit"){
      print('Thanks for playing ');
      break;
    }else if(userInput != 'rock' &&userInput != 'paper' && userInput != 'scissors' ){
      print("Invalid input. Please enter rock, paper, or scissors.");
      continue;
    }
    var random = Random().nextInt(3);
    // print(random);
    // int yourCount = 0;
    // int computerCount =0;
    List<String> computerChoice = ["rock", "paper", "scissors"];

    if (userInput == computerChoice[random]) {
      print("It's a tie!");
    } else if ((userInput == 'rock' && computerChoice[random] == 'scissors') ||
        (userInput == 'paper' && computerChoice[random] == 'rock') ||
        (userInput == 'scissors' && computerChoice[random] == 'paper')) {
      print("You win!");
    } else {
      print("Computer wins!");
    }

  }
}
