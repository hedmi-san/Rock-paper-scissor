import 'dart:io';
import 'dart:math';

void main() {
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
}
