import 'dart:io';
import 'dart:math';

// enum Move { rock, paper, scissor }

void main() {
  //first way to solve
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      int randNum = Random().nextInt(3);
      switch (randNum) {
        case 0:
          if (input == 'r') {
            print('You played: rock\nAI played: rock\nDraw call');
          } else if (input == 'p') {
            print('You played: paper\nAI played: rock\nYou win!');
          } else if (input == 's') {
            print('You played: scissor\nAI played: rock\nYou lose :(');
          }
          break;
        case 1:
          if (input == 'r') {
            print('You played: rock\nAI played: paper\nYou lose :(');
          } else if (input == 'p') {
            print('You played: paper\nAI played: paper\nDraw call');
          } else if (input == 's') {
            print('You played: scissor\nAI played: paper\nYou win!');
          }
          break;
        case 2:
          if (input == 'r') {
            print('You played: rock\nAI played: scissor\nYou win!');
          } else if (input == 'p') {
            print('You played: paper\nAI played: scissor\nYou lose :(');
          } else if (input == 's') {
            print('You played: scissor\nAI played: scissor\nDraw call');
          }
          break;
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
  ;
  //second way to solve

  /* final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scissor? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissor;
      }
      final random = rng.nextInt(3);
      final AIMove = Move.values[random];
      print('You played = ${playerMove}');
      print('AI played = ${AIMove}');
      if (AIMove == playerMove) {
        print('Draw call');
      } else if (AIMove == Move.rock && playerMove == Move.paper ||
          AIMove == Move.paper && playerMove == Move.scissor ||
          AIMove == Move.scissor && playerMove == Move.rock) {
        print('You Win !');
      } else {
        print('You lose :(');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
  ;*/
}
