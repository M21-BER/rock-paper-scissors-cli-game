import 'dart:io';
import 'dart:math';

class Type {
  String name;
  String type;
  Type({required this.name, required this.type});
}

List aiValues = [
  Type(name: "r", type: "Rock"),
  Type(name: "p", type: "Paper"),
  Type(name: "s", type: "Scissors")
];
void main() {
  while (true) {
    stdout.write(
        "Rock, paper Scissors Game! \n Type r or R for Rock \n Type p or P for Paper \n Type s or S for Scissors \n\n selection: ");
    final input = stdin.readLineSync();
    if (input != null && input != "") {
      if (["R", "S", "P"].indexOf(input.toUpperCase()) != -1) {
        coreGame(input);
        break;
      } else {
        print("\n");
        print("Wrong input\n");
      }
    } else {
      print("\n");
      print("you did'nt choose a value!\n");
    }
  }
}

void coreGame(userChoice) {
  var aiPick = aiValues[Random().nextInt(3)];
  if (userChoice.toUpperCase() == "R") {
    if (aiPick.name.toUpperCase() == "R") {
      print("Match is Even, \n user: Rock \n ai: Rock");
    } else if (aiPick.name.toUpperCase() == "P") {
      print("Ai wins the match, \n user: Rock \n ai: Paper");
    } else if (aiPick.name.toUpperCase() == "S") {
      print("User wins the match, \n user: Rock \n ai: Scissors");
    }
  } else if (userChoice.toUpperCase() == "S") {
    if (aiPick.name.toUpperCase() == "R") {
      print("Ai wins the match, \n user: Scissors \n ai: Rock");
    } else if (aiPick.name.toUpperCase() == "P") {
      print("User wins the match, \n user: Scissors \n ai: Paper");
    } else if (aiPick.name.toUpperCase() == "S") {
      print("Match is Even, \n user: Scissors \n ai: Scissors");
    }
  } else if (userChoice.toUpperCase() == "P") {
    if (aiPick.name.toUpperCase() == "R") {
      print("User wins the match, \n user: Paper \n ai: Rock");
    } else if (aiPick.name.toUpperCase() == "P") {
      print("Match is Even, \n user: Paper \n ai: Paper");
    } else if (aiPick.name.toUpperCase() == "S") {
      print("Ai wins the match, \n user: Paper \n ai: Scissors");
    }
  }
}
